From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
Date: Tue, 12 Nov 2019 18:02:37 +0800
Message-ID: <17e14b30-02ee-2379-8891-088677924479@rock-chips.com>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
 <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
 <1eaef5d5-c923-da56-b9c4-48d517b3c969@rock-chips.com>
 <acbab893-9e9a-cfe1-67bf-a9e2b2e50114@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <acbab893-9e9a-cfe1-67bf-a9e2b2e50114@fivetechno.de>
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
To: Markus Reichl <m.reichl@fivetechno.de>, Soeren Moch <smoch@web.de>, heiko@sntech.de
Cc: Mark Rutland <mark.rutland@arm.com>, =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>, Vivek Unune <npcomplete13@gmail.com>, Alexis Ballier <aballier@gentoo.org>, devicetree@vger.kernel.org, Katsuhiro Suzuki <katsuhiro@katsuster.net>, Robin Murphy <robin.murphy@arm.com>, Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Pragnesh Patel <Pragnesh_Patel@mentor.com>, Oskari Lemmela <oskari@lemmela.net>, Akash Gajjar <akash@openedev.com>, Nick Xie <nick@khadas.com>, Peter Robinson <pbrobinson@gmail.com>, Hugh Cole-Baker <sigmaris@gmail.com>, linux-arm-kernel@lists.infradead.org, Andy Yan <andyshrk@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

TWFya3VzLAoKCk9uIDIwMTkvMTEvMTIg5LiL5Y2INDoxNiwgTWFya3VzIFJlaWNobCB3cm90ZToK
PiBIaSBLZXZlciwKPgo+IGhhdmUgYSByazMzOTktcm9jLXBjIHJ1bm5pbmcgbWFpbmxpbmUgVS1C
b290IGFuZCBrZXJuZWwgYW5kIHZkZF9sb2cgaXMKPiBzaG93aW5nIDExMTggbVYuCgpUaGUgcmsz
Mzk5LXJvYy1wYyBoYXZlIHRoZSBzYW1lIHZkZF9sb2cgY2lyY3VpdCBpbiBzY2hlbWF0aWMsIHNv
IGl0IApzaG91bGQgbGlrZSB0aGUgcGF0Y2ggMS8zIG9mCgp0aGlzIHBhdGNoIHNldC4KCkkgZG9u
J3QgdW5kZXJzdGFuZCB3aG8gaXMgc2V0dGluZyB0aGlzIHZhbHVlLCBtYXliZSB0aGUgZGVmYXVs
dCB2YWx1ZSAKd2l0aG91dCBwd20gcmVndWxhdG9yIGVuYWJsZWQ/Cgo+IElzIHRoaXMgYSBkYW5n
ZXIgZm9yIHRoZSBib2FyZD8KPiBIb3cgdG8gZml4IGl0PwoKVGhlIGJlc3Qgd2F5IGlzIHRvIHNl
dCBjb3JyZWN0IG1pbi9tYXggbWljcm92b2x0IG9mIHRoZSAKcmVndWxhdG9yKG1lYXN1cmUgd2l0
aCBQV00gb3V0cHV0IGxvdyBhbmQgaGlnaCksCgoobm90ZSB0aGF0IGlmwqAgbm8gZHJpdmVyIHRv
dWNoIHRoZSByZWd1bGF0b3IsIHRoZSBQV00gaXMgZGVmYXVsdCBpbnB1dCwgCm5vdCBvdXRwdXQ7
KQoKYW5kIHNldCBhIGluaXQtbWljcm92b2x0IGZvciBVLUJvb3QgZHJpdmVyLCBhbmQgSSB0aGlu
ayBubyBrZXJuZWwgZHJpdmVyIAp0b3VjaCB0aGlzIHJlZ3VsYXRvciBub3cuCgoKVGhhbmtzLAoK
LSBLZXZlcgoKPiBCdHcuIHZpbi1zdXBwbHkgZm9yIHRoaXMgcHdtLXJlZ3VsYXRvciBpcyBpZ25v
cmVkIGFuZCBJIGNvdWxkIG5vdCBmaW5kIGl0Cj4gaW4gYmluZGluZ3MgZG9jLgo+Cj4gR3J1w58s
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
