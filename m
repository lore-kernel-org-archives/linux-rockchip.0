Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDF0DD1CDC6
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 12:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFKZn/0wRhZ0LKXmme/AZPP38gz+SsMbwYUaFfAvgjY=; b=bEWxB8+RMLheaJ
	cXN29qwosHF+d0EdZyMLA8PwzaY4ZubCzamPAUJJ+Tn7iMZayPzksGnzmEkUBTo0R1H4xvWUMt1a5
	8ZrGyTdLax8Yz+LU+R+1Pvaoy8dGl+QJaveJQSV5yfU4hVntJxQYsrp5oRPM/xjy4WSru7+oQ5TM0
	c+FARd3kaaHvyOgJrFCxBC5x+K/zMkNeTNoHGOne0J7M2N48TntubYJYl1D6De4XGAisvk2V9uQ1Q
	yOGUS4m0/ldfnSpsqlJ5l5sSgubhp3T3/HB8EsOZbef7XDR7EGd8UwdZ4Q5GPQNyF3eUWhMdNryNb
	n06TgSqh62xbZG21vCpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSx1t-0000000EGey-1XjZ;
	Tue, 09 Dec 2025 12:41:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSx1p-0000000EGe2-14dR;
	Tue, 09 Dec 2025 12:41:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=CPm9gAaFXAi+e7aAc0FyOo5De8ElmI7LLS0rEFiGjhw=; b=0evnc+2cA/JEnnSMdm4qnHw217
	4svvawuDBRuwuswE/N/nvat4cSQVtqY908D6Op7DC884YX2jI5g3HdN0Nfdzz2iAtNJT3JMHFEQEA
	dD5lUMCJnpyoK/RvJWNxXjS50ZqcMfMTKvVFbYvUXUDIcyqfP+7BeOId5C+ikrIDdKFt020Yh2iVc
	+bZ1MAOKFeinIlPFfiWz+0JHDPdQJwnb7togGppY5We7FfDs2VnFf1kPKb7qSFkCfYsJj2L5K6/oR
	lRyCk/s8tTHXg3D2yLoGJHlDkgt5fAQqNl/U0DSX9tHqLlL1p1jiBtUAF1vwRgz+tjNrpf17h6PDe
	CDyePE9g==;
Received: from i53875a42.versanet.de ([83.135.90.66] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vSx1m-0007kS-UM; Tue, 09 Dec 2025 13:41:14 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Ye Zhang <ye.zhang@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ye Zhang <ye.zhang@rock-chips.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, tao.huang@rock-chips.com
Subject: Re: [PATCH v2 6/8] dt-bindings: pinctrl: Add header for Rockchip RK3506 RMIO
Date: Tue, 09 Dec 2025 13:41:14 +0100
Message-ID: <2681672.Lt9SDvczpP@diego>
In-Reply-To: <20251206050844.402958-7-ye.zhang@rock-chips.com>
References: <20251206050844.402958-1-ye.zhang@rock-chips.com>
 <20251206050844.402958-7-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_044118_257191_A52EBBC9 
X-CRM114-Status: GOOD (  18.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgWWUgWmhhbmcsCgpBbSBTYW1zdGFnLCA2LiBEZXplbWJlciAyMDI1LCAwNjowODo0MiBNaXR0
ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFllIFpoYW5nOgo+IEFkZCBoZWFkZXIg
ZmlsZSB3aXRoIGNvbnN0YW50cyBmb3IgUk1JTyBwaW4gYW5kIGZ1bmN0aW9uIElEcyBmb3IgdGhl
Cj4gUm9ja2NoaXAgUkszNTA2IFNvQy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBZZSBaaGFuZyA8eWUu
emhhbmdAcm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gIC4uLi9waW5jdHJsL3JvY2tjaGlwLHJrMzUw
Ni1ybWlvLmggICAgICAgICAgICB8IDE0MyArKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNo
YW5nZWQsIDE0MyBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0
LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAscmszNTA2LXJtaW8uaAo+IAo+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2R0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAscmszNTA2LXJtaW8uaCBiL2lu
Y2x1ZGUvZHQtYmluZGluZ3MvcGluY3RybC9yb2NrY2hpcCxyazM1MDYtcm1pby5oCj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjVkMzk2OTBhMGIyOAo+IC0tLSAv
ZGV2L251bGwKPiArKysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAscmsz
NTA2LXJtaW8uaAo+IEBAIC0wLDAgKzEsMTQzIEBACj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiAoR1BMLTIuMCBPUiBNSVQpICovCj4gKy8qCj4gKyAqIENvcHlyaWdodCAoYykgMjAyNSBS
b2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZC4KPiArICovCj4gKwo+ICsjaWZuZGVmIF9fRFRf
QklORElOR1NfUElOQ1RSTF9ST0NLQ0hJUF9SSzM1MDZfUk1JT19ICj4gKyNkZWZpbmUgX19EVF9C
SU5ESU5HU19QSU5DVFJMX1JPQ0tDSElQX1JLMzUwNl9STUlPX0gKPiArCj4gKy8qIFJNSU8gcGlu
cyBkZWZpbmV0aW9uICovCj4gKyNkZWZpbmUgUk1JT19QSU4wCQkJCTAKPiArI2RlZmluZSBSTUlP
X1BJTjEJCQkJMQo+ICsjZGVmaW5lIFJNSU9fUElOMgkJCQkyCj4gKyNkZWZpbmUgUk1JT19QSU4z
CQkJCTMKPiArI2RlZmluZSBSTUlPX1BJTjQJCQkJNAoKWy4uLl0KCj4gKyNkZWZpbmUgUk1JT19Q
SU4yOQkJCQkyOQo+ICsjZGVmaW5lIFJNSU9fUElOMzAJCQkJMzAKPiArI2RlZmluZSBSTUlPX1BJ
TjMxCQkJCTMxCgphZGRpdGlvbmFsbHkgdG8gS3J6eXN6dG9mJ3MgY29tbWVudHMsIHBsZWFzZSBh
bHNvIGRvbid0IGludHJvZHVjZQp1bmhlbHBmdWwgbWFwcGluZ3MuIEhhdmluZyBjb25zdGFudHMg
bWFwcGluZyBwaW4zMSB0byAzMSBpcyBub3QKaGVscGZ1bCBhdCBhbGwsIGFzIHRoZXJlIGlzIG5v
IHZhbHVlIGFkZGVkLgoKV2UnbGwgYWxyZWFkeSBrbm93IHRoYXQgaXQncyBwaW4zMSBieSByZWFk
aW5nIHRoZSAzMSB3aGVuIHVzZWQuCgoKSW4gY29udHJhc3QsIHRoZSBjb25zdGFudHMgYmVsb3cg
YWRkIGEgbG90IG9mIHZhbHVlLCBiZWNhdXNlIHlvdSBjYW4ndAppbmZlciB0aGUgdGhhdCB0aGUg
ZnVuY3Rpb24gIjE0IiBtZWFucyB0aGUgIENMS18zMksgZnVuY3Rpb24gd2l0aG91dApjb25zdWx0
aW5nIHRoZSBUUk0sIHNvIF90aG9zZV8gYXJlIGhlbHBmdWwuCgo+ICsvKiBSTUlPIGZ1bmN0aW9u
IGRlZmluZXRpb24gKi8KCnR5cGVvICJkZWZpbml0aW9uIgoKPiArI2RlZmluZSBSTUlPX1VBUlQx
X1RYCQkJMQo+ICsjZGVmaW5lIFJNSU9fVUFSVDFfUlgJCQkyCj4gKyNkZWZpbmUgUk1JT19VQVJU
Ml9UWAkJCTMKPiArI2RlZmluZSBSTUlPX1VBUlQyX1JYCQkJNAo+ICsjZGVmaW5lIFJNSU9fVUFS
VDNfVFgJCQk1CgoKVGhhbmtzIGEgbG90CkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
