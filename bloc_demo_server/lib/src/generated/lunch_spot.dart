/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class LunchSpot extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  LunchSpot._({
    int? id,
    required this.name,
    required this.category,
    required this.votes,
  }) : super(id);

  factory LunchSpot({
    int? id,
    required String name,
    required _i2.LunchSpotCategory category,
    required int votes,
  }) = _LunchSpotImpl;

  factory LunchSpot.fromJson(Map<String, dynamic> jsonSerialization) {
    return LunchSpot(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      category: _i2.LunchSpotCategory.fromJson(
          (jsonSerialization['category'] as String)),
      votes: jsonSerialization['votes'] as int,
    );
  }

  static final t = LunchSpotTable();

  static const db = LunchSpotRepository._();

  String name;

  _i2.LunchSpotCategory category;

  int votes;

  @override
  _i1.Table get table => t;

  LunchSpot copyWith({
    int? id,
    String? name,
    _i2.LunchSpotCategory? category,
    int? votes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'category': category.toJson(),
      'votes': votes,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'category': category.toJson(),
      'votes': votes,
    };
  }

  static LunchSpotInclude include() {
    return LunchSpotInclude._();
  }

  static LunchSpotIncludeList includeList({
    _i1.WhereExpressionBuilder<LunchSpotTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LunchSpotTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LunchSpotTable>? orderByList,
    LunchSpotInclude? include,
  }) {
    return LunchSpotIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(LunchSpot.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(LunchSpot.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LunchSpotImpl extends LunchSpot {
  _LunchSpotImpl({
    int? id,
    required String name,
    required _i2.LunchSpotCategory category,
    required int votes,
  }) : super._(
          id: id,
          name: name,
          category: category,
          votes: votes,
        );

  @override
  LunchSpot copyWith({
    Object? id = _Undefined,
    String? name,
    _i2.LunchSpotCategory? category,
    int? votes,
  }) {
    return LunchSpot(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      votes: votes ?? this.votes,
    );
  }
}

class LunchSpotTable extends _i1.Table {
  LunchSpotTable({super.tableRelation}) : super(tableName: 'lunch_spot') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    category = _i1.ColumnEnum(
      'category',
      this,
      _i1.EnumSerialization.byName,
    );
    votes = _i1.ColumnInt(
      'votes',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnEnum<_i2.LunchSpotCategory> category;

  late final _i1.ColumnInt votes;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        category,
        votes,
      ];
}

class LunchSpotInclude extends _i1.IncludeObject {
  LunchSpotInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => LunchSpot.t;
}

class LunchSpotIncludeList extends _i1.IncludeList {
  LunchSpotIncludeList._({
    _i1.WhereExpressionBuilder<LunchSpotTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(LunchSpot.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => LunchSpot.t;
}

class LunchSpotRepository {
  const LunchSpotRepository._();

  Future<List<LunchSpot>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LunchSpotTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LunchSpotTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LunchSpotTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<LunchSpot>(
      where: where?.call(LunchSpot.t),
      orderBy: orderBy?.call(LunchSpot.t),
      orderByList: orderByList?.call(LunchSpot.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LunchSpot?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LunchSpotTable>? where,
    int? offset,
    _i1.OrderByBuilder<LunchSpotTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LunchSpotTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<LunchSpot>(
      where: where?.call(LunchSpot.t),
      orderBy: orderBy?.call(LunchSpot.t),
      orderByList: orderByList?.call(LunchSpot.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LunchSpot?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<LunchSpot>(
      id,
      transaction: transaction,
    );
  }

  Future<List<LunchSpot>> insert(
    _i1.Session session,
    List<LunchSpot> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<LunchSpot>(
      rows,
      transaction: transaction,
    );
  }

  Future<LunchSpot> insertRow(
    _i1.Session session,
    LunchSpot row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<LunchSpot>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LunchSpot>> update(
    _i1.Session session,
    List<LunchSpot> rows, {
    _i1.ColumnSelections<LunchSpotTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<LunchSpot>(
      rows,
      columns: columns?.call(LunchSpot.t),
      transaction: transaction,
    );
  }

  Future<LunchSpot> updateRow(
    _i1.Session session,
    LunchSpot row, {
    _i1.ColumnSelections<LunchSpotTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<LunchSpot>(
      row,
      columns: columns?.call(LunchSpot.t),
      transaction: transaction,
    );
  }

  Future<List<LunchSpot>> delete(
    _i1.Session session,
    List<LunchSpot> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LunchSpot>(
      rows,
      transaction: transaction,
    );
  }

  Future<LunchSpot> deleteRow(
    _i1.Session session,
    LunchSpot row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<LunchSpot>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LunchSpot>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LunchSpotTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<LunchSpot>(
      where: where(LunchSpot.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LunchSpotTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<LunchSpot>(
      where: where?.call(LunchSpot.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
