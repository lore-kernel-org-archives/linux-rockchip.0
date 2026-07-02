Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBA2EC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 16:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1No27myuVO1z/Z6Bhcf2IKnaNuM4QrFDit0AK8fOvU=; b=yYC/m4kuP9uLVL
	f96qva/x/kXvW5yI9gtAU42+ZagN4ag+dFe0er00rxpqS2609eSxUlwzBjhyAJQL0oZWuOPPyRsy8
	pHAJ+cByhWwVlmtvOPI6Ze1RG1QrTaL4cq+bXwxLjn3cCJJNsQ4EU5B9XQf+++3JJoc6SYcHjrDcR
	NVEGlqPJggDm0ISGsBW5/Auwkt46eiqRAEqOurbN5SlbVjxyYP48+aP0YDp0WCn0BiIm9RCPNAPPL
	zyFxzgrFht5AfdaqG58OLHrbqUQuwNOOgxWTT3+doXbEO8Mn62ebPy5UXRq5w7RAAKsSqdqQtf9yR
	2r1vUX+juMmYCkq6Lbow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJs6-00000004u4H-27t8;
	Thu, 02 Jul 2026 16:02:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJs2-00000004u2s-3fWP;
	Thu, 02 Jul 2026 16:02:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Om1A/qUPAE+RvRc9QOCiGXLsDeJqGK2rZLRnc+C2LPU=; b=PRBdzR5FrpwlcK69ZWsZm+uEdL
	nHKCecM0P3uNqXRCLMZ4e5saOl2fHva7y6aB+iizLxJ5rSNgl5cLsYRc0MP0jZAYG+N+CjwDIgtxL
	USbLfTdmx6Go5xHgm3Ipn5r7o5/8WqscetSYzfLsvbrSPKvFHmkkKDVmWzlG9b6RaTXch9YGUM1Q3
	Ur2Z4NKK4n23iEY5JG53LPPskGXXTH1TmsI9rZHpC69Dlef40qlEKq2in+xLCMAfe13uQdC9ZkdSu
	/l1MX/nAJ99AAxxsxM3aUZKNdzDMiY8kZ94gMFC+yP6rx8IQJFfjZdKMaozCb4Y1ML/fMYOQgbeWa
	yQ4zqj/Q==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
 linux-can <linux-can@vger.kernel.org>, 1579567540@qq.com
Cc: Vincent Mailhol <mailhol@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel <kernel@pengutronix.de>,
 Conor Dooley <conor+dt@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Shengjiu Wang <shengjiu.wang@nxp.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Eric Biggers <ebiggers@kernel.org>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Karl Mehltretter <kmehltretter@gmail.com>, Yixun Lan <dlan@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Cunhao Lu <1579567540@qq.com>,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 2/4] can: rockchip: add RK3588 CAN support
Date: Thu, 02 Jul 2026 18:02:25 +0200
Message-ID: <3527453.usfYGdeWWP@diego>
In-Reply-To: <tencent_F077D309CDB6CC4802CC086D8009E29BDF06@qq.com>
References: <20260702140654.2961561-1-1579567540@qq.com>
 <tencent_F077D309CDB6CC4802CC086D8009E29BDF06@qq.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_090234_910667_CA4D36AF 
X-CRM114-Status: GOOD (  15.88  )
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

QW0gRG9ubmVyc3RhZywgMi4gSnVsaSAyMDI2LCAxNjowNjo1MiBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIDE1Nzk1Njc1NDBAcXEuY29tOgo+IEZyb206IEN1bmhhbyBMdSA8
MTU3OTU2NzU0MEBxcS5jb20+Cj4gCj4gQWRkIHN1cHBvcnQgZm9yIHRoZSBSSzM1ODggQ0FOIGNv
bnRyb2xsZXIgYnkgaW50cm9kdWNpbmcgYSBkZWRpY2F0ZWQKPiBtb2RlbCBJRCBhbmQgT0YgbWF0
Y2ggZW50cnkuCj4gCj4gVGhlIGJsb2NrIGlzIGNsb3NlbHkgcmVsYXRlZCB0byB0aGUgZXhpc3Rp
bmcgUkszNTY4IHZhcmlhbnRzLCBidXQgaXQKPiBjYW5ub3QgcmV1c2UgdGhlaXIgbWF0Y2ggZGF0
YSB1bmNoYW5nZWQuIEluIHBhcnRpY3VsYXIsIFJLMzU4OAo+IGVuY29kZXMgUlhfRklGT19DTlQg
aW4gYml0cyA3OjUgaW5zdGVhZCBvZiA2OjQsIHNvIHRoZSBSWCBwYXRoIG5lZWRzCj4gU29DLXNw
ZWNpZmljIGhhbmRsaW5nLgo+IAo+IFRoZSBSWCBGSUZPIGNvdW50IGJpdGZpZWxkIGRpZmZlcmVu
Y2Ugd2FzIGZvdW5kIGJ5IGNvbXBhcmluZyBSb2NrY2hpcCdzCj4gdmVuZG9yIGtlcm5lbCA2LjEg
Q0FOIHN1cHBvcnQgZm9yIFJLMzU2OCBhbmQgUkszNTg4LiBSdW50aW1lIHRlc3Rpbmcgb24KPiBS
SzM1ODggYWxzbyBjb25maXJtcyB0aGF0IGJpdHMgNzo1IGFyZSBuZWVkZWQuCj4gCj4gRW5hYmxl
IHRoZSBleGlzdGluZyBlcnJhdHVtIDUgZW1wdHktRklGTyB3b3JrYXJvdW5kIGZvciBSSzM1ODgu
Cj4gSGVpa28gcmVwcm9kdWNlZCBlcnJhdHVtIDYgb24gUkszNTg4LCBzbyBlbmFibGUgdGhhdCB3
b3JrYXJvdW5kIGFzCj4gd2VsbC4KPiAKPiBLZWVwIFJLQ0FORkRfUVVJUktfQ0FORkRfQlJPS0VO
IGVuYWJsZWQgZm9yIFJLMzU4OCwgc28gQ0FOLUZEIHN0YXlzCj4gZGlzYWJsZWQgZm9yIG5vdy4g
TG9jYWwgdGVzdGluZyBkaWQgbm90IHJlcHJvZHVjZSB0aGUgdHdvIGtub3duIENBTi1GRAo+IHRy
aWdnZXIgZnJhbWVzIHRoYXQgY2F1c2UgRXJyb3IgSW50ZXJydXB0cyBvbiBSSzM1NjggdmFyaWFu
dHMuIEluc3RlYWQsCj4gUkszNTg4IHNob3dzIGEgZGlmZmVyZW50IENBTi1GRCBmYWlsdXJlIG1v
ZGU6IENBTi1GRCBmcmFtZXMgd2l0aG91dCBCUlMKPiB3b3JrIGluIHRoaXMgc2V0dXAsIGJ1dCBC
UlMgd2l0aCBhIGRhdGEgYml0cmF0ZSBkaWZmZXJlbnQgZnJvbSB0aGUKPiBub21pbmFsIGJpdHJh
dGUgaW1tZWRpYXRlbHkgZHJpdmVzIHRoZSBjb250cm9sbGVyIGJ1cy1vZmYuCj4gCj4gUmVwb3J0
ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckBjaGVycnkuZGU+Cj4gTGluazog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI2MDYzMDE2NDMzNi4zNDQ0NTUwLTQtaGVp
a29Ac250ZWNoLmRlLwoKSSB0aGluayB5b3UgbWlnaHQgd2FudCB0byBkcm9wIHRoYXQgYWJvdmUu
IElmIGFueXRoaW5nIGEgQ28tZGV2ZWxvcGVkLWJ5CndvdWxkIGJlIGFwcGxpY2FibGUsIGJ1dCBm
cm9tIHRoZSAoc21hbGwpIHNpemUgb2YgdGhlIGNoYW5nZSwgdGhhdCBhbHNvCmlzbid0IHJlYWxs
eSBuZWNlc3NhcnkgZm9yIG1lIDotKQoKCj4gU2lnbmVkLW9mZi1ieTogQ3VuaGFvIEx1IDwxNTc5
NTY3NTQwQHFxLmNvbT4KClRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5k
ZT4KUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
