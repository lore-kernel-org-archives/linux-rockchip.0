From: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH RESEND 1/2] dt-bindings: phy: drop #clock-cells from
 rockchip,px30-dsi-dphy
Date: Fri, 20 Dec 2019 16:51:28 +0530
Message-ID: <45c59145-5705-90f9-ff0e-c84cf8d17e8b@ti.com>
References: <20191216122448.27867-1-heiko@sntech.de>
 <20191216175615.GA23392@bogus> <12525836.FhlgEYrHGb@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <12525836.FhlgEYrHGb@diego>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Rob Herring <robh@kernel.org>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

CgpPbiAxNi8xMi8xOSAxMTozMSBwbSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgUm9iLAo+
IAo+IEFtIE1vbnRhZywgMTYuIERlemVtYmVyIDIwMTksIDE4OjU2OjE1IENFVCBzY2hyaWViIFJv
YiBIZXJyaW5nOgo+PiBPbiBNb24sIDE2IERlYyAyMDE5IDEzOjI0OjQ3ICswMTAwLCBIZWlrbyBT
dHVlYm5lciB3cm90ZToKPj4+IEZyb206IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckB0
aGVvYnJvbWEtc3lzdGVtcy5jb20+Cj4+Pgo+Pj4gRnVydGhlciByZXZpZXcgb2YgdGhlIGRzaSBj
b21wb25lbnRzIGZvciB0aGUgcHgzMCByZXZlYWxlZCB0aGF0IHRoZQo+Pj4gcGh5IHNob3VsZG4n
dCBleHBvc2UgdGhlIHBsbCBhcyBjbG9jayBidXQgaW5zdGVhZCBoYW5kbGUgc2V0dGluZ3MKPj4+
IHZpYSBwaHkgcGFyYW1ldGVycy4KPj4+Cj4+PiBBcyB0aGUgcGh5IGJpbmRpbmcgaXMgbmV3IGFu
ZCBub3QgdXNlZCBhbnl3aGVyZSB5ZXQsIGp1c3QgZHJvcCB0aGVtCj4+PiBzbyB0aGV5IGRvbid0
IGdldCB1c2VkLgo+Pj4KPj4+IEZpeGVzOiAzODE3Yzc5NjExNzkgKCJkdC1iaW5kaW5nczogcGh5
OiBhZGQgeWFtbCBiaW5kaW5nIGZvciByb2NrY2hpcCxweDMwLWRzaS1kcGh5IikKPj4+IFNpZ25l
ZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckB0aGVvYnJvbWEtc3lzdGVt
cy5jb20+Cj4+PiAtLS0KPj4+IEhpIEtpc2hvbiwKPj4+Cj4+PiBtYXliZSBzdWl0YWJsZSBhcyBh
IGZpeCBmb3IgNS41LXJjPwo+Pj4KPj4+IFRoYW5rcwo+Pj4gSGVpa28KPj4+Cj4+PiAgLi4uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLHB4MzAtZHNpLWRwaHkueWFtbCAgICAgIHwg
NSAtLS0tLQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGRlbGV0aW9ucygtKQo+Pj4KPj4KPj4gUGxl
YXNlIGFkZCBBY2tlZC1ieS9SZXZpZXdlZC1ieSB0YWdzIHdoZW4gcG9zdGluZyBuZXcgdmVyc2lv
bnMuIEhvd2V2ZXIsCj4+IHRoZXJlJ3Mgbm8gbmVlZCB0byByZXBvc3QgcGF0Y2hlcyAqb25seSog
dG8gYWRkIHRoZSB0YWdzLiBUaGUgdXBzdHJlYW0KPj4gbWFpbnRhaW5lciB3aWxsIGRvIHRoYXQg
Zm9yIGFja3MgcmVjZWl2ZWQgb24gdGhlIHZlcnNpb24gdGhleSBhcHBseS4KPj4KPj4gSWYgYSB0
YWcgd2FzIG5vdCBhZGRlZCBvbiBwdXJwb3NlLCBwbGVhc2Ugc3RhdGUgd2h5IGFuZCB3aGF0IGNo
YW5nZWQuCj4gCj4gc29ycnkgYWJvdXQgdGhhdC4gVGhlIG9yaWdpbmFsIHJlc3BvbnNlIHNvbWVo
b3cgZGlkIG5vdCB0aHJlYWQgY29ycmVjdGx5Cj4gaW4gbXkgbWFpbCBjbGllbnQsIHByb2JhYmx5
IHNvbWUgZmF1bHQgb24gbXkgc2lkZSwgc28gSSd2ZSBvbmx5IGZvdW5kIHlvdXIKPiBtYWlsIGp1
c3Qgbm93IGJ5IGRpZ2dpbmcgaGFyZC4KPiAKPiBAS2lzaG9uLCB0aGUgb3JpZ2luYWwgbWFpbCBh
bHJlYWR5IGdvdCBhbgo+IAo+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3Jn
PgoKbWVyZ2VkIG5vdywgVGhhbmtzIQoKLUtpc2hvbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
