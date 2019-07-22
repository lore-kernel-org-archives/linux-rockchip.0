From: Vicente Bergas <vicencb@gmail.com>
Subject: Re: kexec on rk3399
Date: Mon, 22 Jul 2019 19:05:37 +0200
Message-ID: <d5959b93-40ce-455c-877e-c661a3f22351@gmail.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <91c53121-9041-e8a2-97a2-5b5626e24c6e@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <91c53121-9041-e8a2-97a2-5b5626e24c6e@arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Marc Zyngier <marc.zyngier@arm.com>
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gTW9uZGF5LCBKdWx5IDIyLCAyMDE5IDQ6NTQ6NDEgUE0gQ0VTVCwgTWFyYyBaeW5naWVyIHdy
b3RlOgo+IE9uIDIyLzA3LzIwMTkgMTU6MzEsIFZpY2VudGUgQmVyZ2FzIHdyb3RlOgo+PiBIaSwg
aSBoYXZlIGJlZW4gcnVubmluZyBsaW51eCBvbiByazMzOTkgYm9vdGVkIHdpdGgga2V4ZWMgZmlu
ZSB1bnRpbCA1LjIKPj4gRnJvbSA1LjIgb253YXJkcywgdGhlcmUgYXJlIG1lbW9yeSBjb3JydXB0
aW9uIGlzc3VlcyBhcyByZXBvcnRlZCBoZXJlOgo+PiBodHRwOi8vbGttbC5pdS5lZHUvaHlwZXJt
YWlsL2xpbnV4L2tlcm5lbC8xOTA2LjIvMDcyMTEuaHRtbAo+PiBrZXhlYyBoYXMgYmVlbiBpZGVu
dGlmaWVkIGFzIHRoZSBwcmluY2lwYWwgcmVhc29uIGZvciB0aGUgaXNzdWVzLgo+PiAKPj4gSXQg
dHVybnMgb3V0IHRoYXQga2V4ZWMgaGFzIG5ldmVyIHdvcmtlZCByZWxpYWJseSBvbiB0aGlzIHBs
YXRmb3JtLCAuLi4KPgo+IE5vdCB0aGUgbW9zdCB0cnVzdGVkIHZlcnNpb24sIGJ1dCBoZXksIHdo
eSBub3QuLi4KPgo+PiAgMi4tIEtleGVjIGludG8gdjUuMi4yCj4+ICAzLi0gVGhlIGtlcm5lbCBy
ZXBvcnRzIG5vdGhpbmcgKGVhcmx5Y29uIG5vdCBlbmFibGVkKSBhbmQgZG9lcyBub3QgYm9vdC4K
Pj4gVGhlIHNhbWUga2VybmVsIHY1LjIuMiB3b3JrcyBmaW5lIHdoZW4gYm9vdGVkIHdpdGhvdXQg
a2V4ZWMuCj4KPiBDYW4geW91IHBsZWFzZSBlbmFibGUgZWFybHljb24gYW5kIGxldCB1cyBrbm93
IGhvdyBmYXIgaXQgZ29lcz8gWW91cgo+IHByZXZpb3VzIHJlcG9ydHMgaGludGluZyBhdCBydW50
aW1lIG1lbW9yeSBjb3JydXB0aW9uLCBidXQgdGhpcyBzZWVtcyB0bwo+IGJlIG11Y2ggbW9yZSBy
YWRpY2FsLi4uCgpEZXRhaWxzIG9uIHByZXZpb3VzIGVtYWlsLCBidXQgYmFzaWNhbGx5LCBlYXJs
eWNvbiBhZmZlY3RzIHJlcHJvZHVjaWJpbGl0eS4KCklmIGl0IGlzIGEgcnVudGltZSBtZW1vcnkg
Y29ycnVwdGlvbiwgd2hhdCBhcmUgd2UgaHVudGluZyBmb3I/IGFuIGlzc3VlIGluCnRoZSBrZXJu
ZWwgYmVmb3JlIGtleGVjIG9yIGluIHRoZSBrZXJuZWwgYWZ0ZXIga2V4ZWM/Cgo+IEZXSVcsIEkg
d2FzIGFibGUgdG8ga2V4ZWMgdXNpbmcgNS4yLXJjeCAoZm9yIHZhbHVlcyBvZiB4IGFyb3VuZCA2
KSBvbiBhCj4gTmFub1BDLVQ0LCB1c2luZyBhIG1haW5saW5lIHUtYm9vdCBhbmQgZmlybXdhcmUu
Cj4KPiBUaGFua3MsCj4KPiAJTS4KClJlZ2FyZHMsCiAgVmljZW7Dpy4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
