From: Vicente Bergas <vicencb@gmail.com>
Subject: Re: kexec on rk3399
Date: Mon, 22 Jul 2019 18:08:37 +0200
Message-ID: <7b8df2ae-032b-49bf-a7d8-5a0f8a1c2618@gmail.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <20190722144636.x3bxq2ky7w2yfn3m@willie-the-truck>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190722144636.x3bxq2ky7w2yfn3m@willie-the-truck>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Will Deacon <will@kernel.org>
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>, Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gTW9uZGF5LCBKdWx5IDIyLCAyMDE5IDQ6NDY6MzYgUE0gQ0VTVCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDQ6MzE6MjdQTSArMDIwMCwgVmljZW50ZSBC
ZXJnYXMgd3JvdGU6Cj4+IEhpLCBpIGhhdmUgYmVlbiBydW5uaW5nIGxpbnV4IG9uIHJrMzM5OSBi
b290ZWQgd2l0aCBrZXhlYyBmaW5lIHVudGlsIDUuMgo+PiBGcm9tIDUuMiBvbndhcmRzLCB0aGVy
ZSBhcmUgbWVtb3J5IGNvcnJ1cHRpb24gaXNzdWVzIGFzIHJlcG9ydGVkIGhlcmU6Cj4+IGh0dHA6
Ly9sa21sLml1LmVkdS9oeXBlcm1haWwvbGludXgva2VybmVsLzE5MDYuMi8wNzIxMS5odG1sCj4+
IGtleGVjIGhhcyBiZWVuIGlkZW50aWZpZWQgYXMgdGhlIHByaW5jaXBhbCByZWFzb24gZm9yIHRo
ZSBpc3N1ZXMuCj4KPiBJIHRob3VnaHQgdGhhdCB5b3UgcmVzb2x2ZWQgdGhpcyBpc3N1ZSBieSB1
cGdyYWRpbmcgdS1ib290LiBEaWQgdGhhdCBub3QKPiBhY3R1YWxseSB3b3JrPwo+Cj4gV2lsbAoK
SSBhbSBub3cgdXNpbmcgdS1ib290LCBidXQgdGhhdCBpcyBub3QgYSBzb2x1dGlvbi4KTXkgaW50
ZW50aW9uIGlzIHRvIHVzZSBpdCBvbiB0aGUgU2FwcGhpcmUgYm9hcmQgYW5kIG9uIGdydS1rZXZp
bi4KSSB3b3VsZCBsaWtlIHRoZSBib290bG9hZGVyIHRvIHN1cHBvcnQgSERNSSBvbiB0aGUgc2Fw
cGhpcmUgYW5kIEVEUCBvbiAKa2V2aW4KZm9yIHRoZSBpbnRlcmFjdGl2ZSBib290IG1lbnUuClUt
Qm9vdCBvbiB0aGUgU2FwcGhpcmUgYm9vdHMsIGJ1dCBoYXMgbm8gZ3JhcGhpYyBkaXNwbGF5LiBL
ZXZpbiBpcyBub3QgCnN1cHBvcnRlZCBhdCBhbGwuCkkndmUgYWNoaXZlZCBzb21lIHByb2dyZXNz
IG9uIHRoZSB1LWJvb3QgZnJvbnQsIGJ1dCBub3QgZW5vdWdoIHRvIGhhdmUgCmRpc3BsYXkuCgpX
aXRoIGEga2V4ZWMtYmFzZWQgYm9vdGxvYWRlciBkaXNwbGF5IGlzIGFscmVhZHkgd29ya2luZywg
b3V0IG9mIHRoZSBib3guCgpGcm9tIGFub3RoZXIgcG9pbnQgb2YgdmlldywgSSB3b3VsZCBsaWtl
IHRvIHJlZHVjZSB0aGUgVENCICh0cnVzdGVkIApjb21wdXRpbmcgYmFzZSkuCkxpbnV4IGlzIGh1
Z2UsIGJ1dCBpcyBhbHJlYWR5IGluIHRoZSBUQ0IsIHNvLCBleGVjdXRpbmcgaXQgdHdpY2UgZG9l
cyBub3QgCmFkZCB0byB0aGUgVENCLgpVLUJvb3QsIGluc3RlYWQsIGlzIGVubGFyZ2luZyB0aGUg
VENCLCBpbiB0aGlzIGNhc2UuCgpSZWdhcmRzLAogIFZpY2Vuw6cuCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
