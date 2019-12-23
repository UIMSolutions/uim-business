module uim.business.mixins;

import uim.business;

/// mixin for boolean properties
template OBool(string name) {
    const char[] OBool = `
    protected bool _`~name~`; 
    @safe @property bool `~name~`() { return _`~name~`; }; 
    @safe @property void `~name~`(bool new`~name~`) { _`~name~` = new`~name~`; };     
    `;
} 

/// mixin for string properties
template OString(string name) {
    const char[] OString = `
    protected string _`~name~`; 
    @safe @property string `~name~`() { return _`~name~`; }; 
    @safe @property void `~name~`(string new`~name~`) { _`~name~` = new`~name~`; };     
    `;
} 

/// mixin for language string properties
template OLanguageString(string name) {
    const char[] OLanguageString = `
    protected string[string] _`~name~`; 
    @safe @property string[string] `~name~`() { return _`~name~`; }; 
    @safe @property void `~name~`(string[string] new`~name~`) { _`~name~` = new`~name~`; };     
    `;
} 

/// mixin for uuid properties
template OUuid(string name) {
    const char[] OUuid = `
    protected UUID _`~name~`; 
    @safe @property UUID `~name~`() { return _`~name~`; }; 
    @safe @property void `~name~`(UUID new`~name~`) { _`~name~` = new`~name~`; };     
    `;
} 
/// mixin for uuid properties
template OUuidArray(string name) {
    const char[] OUuid = `
    protected UUID[] _`~name~`; 
    @safe @property UUID[] `~name~`() { return _`~name~`; }; 
    @safe @property void `~name~`(UUID[] new`~name~`) { _`~name~` = new`~name~`; };     
    `;
} 

/// mixin for object id properties
template OObjectId(string name) {
    const char[] OObjectId = `
    protected string[UUID] _`~name~`; 
    @safe @property string[UUID] `~name~`() { return _`~name~`; }; 
    @safe @property void `~name~`(string[UUID] new`~name~`) { _`~name~` = new`~name~`; };     
    `;
} 

/// mixin for object Ids properties - etag[UUID]
template OObjectIds(string name) {
    const char[] OObjectIds = `
    protected string[UUID] _`~name~`; 
    @safe @property string[UUID] `~name~`() { return _`~name~`; }; 
    @safe @property void `~name~`(string[UUID] new`~name~`) { _`~name~` = new`~name~`; };     
    `;
} 

/// mixin for uuid properties
template OTimestamp(string name) {
    const char[] OTimestamp = `
    protected size_t _`~name~`; 
    @safe @property size_t `~name~`() { return _`~name~`; }; 
    @safe @property void `~name~`(size_t new`~name~`) { _`~name~` = new`~name~`; };     
    `;
} 

/// mixin for uuid properties
template OCounter(string name) {
    const char[] OCounter = `
    protected size_t _`~name~`; 
    @safe @property size_t `~name~`() { return _`~name~`; }; 
    @safe @property void `~name~`(size_t new`~name~`) { _`~name~` = new`~name~`; };     
    `;
} 