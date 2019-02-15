From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 2/2] Rockchip arm64 devicetree fixes for 5.0
Date: Fri, 15 Feb 2019 20:19:50 +0100
Message-ID: <CAK8P3a3+6RuTEo=C0jkdiBswHrrKCSoxvYi3r60j45Sn6rhL3g@mail.gmail.com>
References: <7484850.KS8GUYnfXV@phil> <23121360.LiWTZRSn6P@phil>
 <CAK8P3a0Oa4B_r3mAu6udmJPyKBnOwswTwOGsOuX0ruhfexqbxg@mail.gmail.com>
 <1707879.5psMmg8Cs2@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1707879.5psMmg8Cs2@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gRnJpLCBGZWIgMTUsIDIwMTkgYXQgNzozOCBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEFtIEZyZWl0YWcsIDE1LiBGZWJydWFyIDIwMTksIDEzOjQyOjQ4
IENFVCBzY2hyaWViIEFybmQgQmVyZ21hbm46Cj4gPiBPbiBGcmksIEZlYiAxLCAyMDE5IGF0IDEy
OjE0IFBNIEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+ID4gPiAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCj4gPiA+IEZpeCBmb3IgbmV3IGR0YyBncmFwaCB3YXJuaW5ncyBhbmQgYSByZWd1bGF0b3Ig
Zml4IGZvciByb2NrNjQuCj4gPiA+Cj4gPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4KPiA+ID4gRG1pdHJ5IFZv
eXRpayAoMSk6Cj4gPiA+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBlbmFibGUgdXNiLWhv
c3QgcmVndWxhdG9ycyBhdCBib290IG9uCj4gPiA+ICAgICAgIHJrMzMyOC1yb2NrNjQKPiA+Cj4g
PiBQdWxsZWQgaW50byBhcm0vZml4ZXMsIHRoYW5rcyEKPiA+Cj4gPiBOb3RlOiBzaW5jZSB3ZSBh
bHdheXMgaGF2ZSBvbmx5IGEgc2luZ2xlIGZpeGVzIGJyYW5jaCwgc2VuZGluZyB0aGUKPiA+IDMy
LWJpdCBhbmQgNjQtYml0IGZpeGVzIHRvZ2V0aGVyIHdvdWxkIGJlIHNsaWdodGx5IGVhc2llci4K
Pgo+IE5vIHByb2JsZW0sIEknbGwga2VlcCAzMis2NGJpdCBmaXhlcyB0b2dldGhlciBpbiB0aGUg
ZnV0dXJlLgo+IEkgZ3Vlc3MgcmVndWxhciBjaGFuZ2VzIGZvciB0aGUgbWVyZ2Utd2luZG93IHNo
b3VsZCBjb250aW51ZQo+IGJlaW5nIHNlcGFyYXRlZCwgcmlnaHQ/CgpZZXMsIHVubGVzcyB0aGV5
IGFyZSBsb2dpY2FsbHkgY29ubmVjdGVkLiBZb3UgY2FuIGFsc28gaGF2ZQptb3JlIHRoYW4gdHdv
IERUIHB1bGwgcmVxdWVzdHMgaWYgdGhhdCBtYWtlcyBhIGJldHRlciBzcGxpdC4KU29tZSBTb0Nz
IGhhdmUgc2VwYXJhdGUgZHQtYmluZGluZ3MgcHVsbCByZXF1ZXN0cyAoc2hhcmVkCndpdGggZHJp
dmVycyksIG9yIHNwbGl0IG91dCBzdHVmZiBieSBTb0Mgc3ViZmFtaWx5IGlmIGl0IGdldHMgdG9v
CmJpZyAocHJvYmFibHkgbm90IG5lY2Vzc2FyeSBmb3Igcm9ja2NoaXBzLCB3aGljaCBzZWVtIG1v
cmUKdW5pZm9ybSkuCgogICAgICAgQXJuZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
