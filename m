From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: Don't use spin_lock_irqsave in interrupt
 context
Date: Sat, 10 Feb 2018 17:23:06 +0100
Message-ID: <1742402.LPvxsQ5ymm@phil>
References: <20180210143501.30407-1-marc.zyngier@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180210143501.30407-1-marc.zyngier@arm.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Marc Zyngier <marc.zyngier@arm.com>
Cc: David Airlie <airlied@linux.ie>, linux-rockchip@lists.infradead.org, Mark Yao <markyao0591@gmail.com>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

SGkgTWFyYywKCkFtIFNhbXN0YWcsIDEwLiBGZWJydWFyIDIwMTgsIDE1OjM1OjAxIENFVCBzY2hy
aWViIE1hcmMgWnluZ2llcjoKPiBUaGUgcm9ja2NoaXAgRFJNIGRyaXZlciBpcyBxdWl0ZSBjYXJl
ZnVsIHRvIGRpc2FibGUgaW50ZXJydXB0cwo+IHdoZW4gdGFraW5nIGEgbG9jayB0aGF0IGlzIGFs
c28gdGFrZW4gaW4gaW50ZXJydXB0IGNvbnRleHQsCj4gd2hpY2ggaXMgYSBnb29kIHRoaW5nLgo+
IAo+IFdoYXQgaXMgYSBiaXQgb3ZlciB0aGUgdG9wIGlzIHRvIHVzZSBzcGluX2xvY2tfaXJxc2F2
ZSB3aGVuCj4gYWxyZWFkeSBpbiBpbnRlcnJ1cHQgY29udGV4dCwgYXMgeW91IGNhbm5vdCB0YWtl
IGFub3RoZXIKPiBpbnRlcnJ1cHQgYWdhaW4sIGFuZCBkaXNhYmxpbmcgaW50ZXJydXB0IGlzIGp1
c3QgcHVyZQo+IG92ZXJoZWFkLgo+IAo+IFN3aXRjaGluZyB0byB0aGUgbm9uIF9pcnFzYXZlIHZl
cnNpb24gaW4gaW50ZXJydXB0IGNvbnRleHQgaXMKPiBtb3JlIGxvZ2ljYWwsIGFuZCBsZXNzIGhl
YXZ5IGhhbmRlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5bmdpZXIgPG1hcmMuenluZ2ll
ckBhcm0uY29tPgoKcGxlYXNlIG5vdGUsIHRoYXQgd2UgaGFkIGEgbWFpbnRhaW5lciBzd2FwIGZv
ciB0aGUgUm9ja2NoaXAgZHJtLWNvbXBvbmVudCwKd2hlcmUgU2FuZHkgcmVwbGFjZWQgTWFyayBb
MF0gLi4uIHdpdGggbWUgYWN0aW5nIGFzIHNvcnQtb2YgKGFuZCBub3QgeWV0CnVwIHRvIHNwZWVk
KSBiYWNrdXAuCgpTbyBJIGd1ZXNzIFJvY2tjaGlwIGRybSBwYXRjaGVzIHNob3VsZCBhbHNvIGlu
Y2x1ZGUKCVNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+CgoKSGVpa28KClswXSBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51
eC5naXQvY29tbWl0Lz9pZD1iNDE1Yjc5NTI5MzkxYWJkMjliNmEzMGI5MzY5NzgyMWYwMWUwODJm
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRl
dmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
