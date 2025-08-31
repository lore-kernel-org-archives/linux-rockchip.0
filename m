Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C489FCA0FE8
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Aug 2025 15:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4/1jnSs2mdPyDK4GO8PJ/0sQS4ZecRCCKxH9oxsBmU=; b=weGPIsnaHs7rhW
	qF1uJ8aryGoThHT02ThtsfrZUPxv6GZBOkNFgEdV2QSXAbkPVJFaGNmM0eJlC8MRTRhFAk85cn4R+
	clM4taQLwwM9U/+O2MVb9lOwwuk9vg0YGiz9+91oUGaeCIuxXR8Ekh4Vr7t2d/A4B2KN4H0li3YqO
	3mjxYmhjTG6XYaAZNgaJrR7D2qJbVR5Wh59pQVQzg5vaZ9DtafKmJSqhEYzvsfJwenb75iaFwIjqN
	ZvLadHxGPWxnqoR1VSPzUhW1QW0GHdYcJXfbF1NoatmfjYGHjdtU9mUhjbdb47mggKjqAh+zL5HKq
	q5O41JGHsXkj7ILwfTng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usjaF-0000000AK1L-2bgM;
	Sun, 31 Aug 2025 15:03:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usjXT-0000000AJhS-1tTG;
	Sun, 31 Aug 2025 15:00:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Fr6WeyZngKjkJ5+vVtCZO61j1ruKlxiA/dfdiEwKXnQ=; b=LfMXg7NI+LMPnZfVWumdDKjTyJ
	0uX6YKgMouWgKkBiHu6f+kxKivGn9BwAMdUyKqPq4yCbL/qgdjLvWsXMEwCdRuvwyXhaYysFpgmzs
	kyxCUbdhxD8IvEaKjipla6gnREgCpzdQiit83mftQoPsBM0H8z8NfyLuSw5yUbG0EOwd03aTElKA0
	eV/5b1XpLlAM3X5/+0E2vrey41ZB0Mel1vM3R9aZtvQL5hDS3qGOzWChpTL80SfNJbffKz2vgowZK
	XC2bPf/Qk3F6s91Ir5dkICdjdvAUYhuwdDF3YZ2V36gPCD4Dl67f8wdKgzLNEDcO/6Vb2vdiHlMmo
	x5MDfHJA==;
Received: from i53875b56.versanet.de ([83.135.91.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1usjXF-0007mn-4M; Sun, 31 Aug 2025 17:00:01 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Subject: Re: [PATCH v1 3/7] dt-bindings: clock: rk3368: Add SCLK_MIPIDSI_24M
Date: Sun, 31 Aug 2025 17:00:00 +0200
Message-ID: <2235041.irdbgypaU6@diego>
In-Reply-To: <20250831104855.45883-4-cn.liweihao@gmail.com>
References: <20250831104855.45883-1-cn.liweihao@gmail.com>
 <20250831104855.45883-4-cn.liweihao@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_080015_513558_A6A9D387 
X-CRM114-Status: GOOD (  13.38  )
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

SGksCkFtIFNvbm50YWcsIDMxLiBBdWd1c3QgMjAyNSwgMTI6NDg6NTEgTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBXZWlIYW8gTGk6Cj4gQWRkIGEgY2xvY2sgaWQgZm9yIG1p
cGkgZHNpIHJlZmVyZW5jZSBjbG9jaywgbWlwaSBkc2kgbm9kZSB1c2VkIGl0Lgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFdlaUhhbyBMaSA8Y24ubGl3ZWloYW9AZ21haWwuY29tPgoKeW91IG1pc3NlZCBh
IG51bWJlciBvZiBkZXZpY2V0cmVlIG1haW50YWluZXJzLCBSb2IgdGhhbmtmdWxseSBkb2VzCm5v
dCBuZWVkIHRvIGRvIHRoaXMgb24gaGlzIG93biBhbnltb3JlLgoKc28gcGxlYXNlIGdldCB0aGUg
YXBwcm9wcmlhdGUgbGlzdCBvZiBtYWludGFpbmVycyB2aWEgc2NyaXB0cy9nZXRfbWFpbnRhaW5l
ci5wbAoKQ2hhbmdlIGl0c2VsZiBsb29rcyBmaW5lIHRob3VnaC4KCkhlaWtvCgo+IC0tLQo+ICBp
bmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JrMzM2OC1jcnUuaCB8IDEgKwo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5n
cy9jbG9jay9yazMzNjgtY3J1LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JrMzM2OC1j
cnUuaAo+IGluZGV4IGViYWUzY2JmOC4uYjk1MWUyOTA2IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUv
ZHQtYmluZGluZ3MvY2xvY2svcmszMzY4LWNydS5oCj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5n
cy9jbG9jay9yazMzNjgtY3J1LmgKPiBAQCAtNzIsNiArNzIsNyBAQAo+ICAjZGVmaW5lIFNDTEtf
U0ZDCQkxMjYKPiAgI2RlZmluZSBTQ0xLX01BQwkJMTI3Cj4gICNkZWZpbmUgU0NMS19NQUNSRUZf
T1VUCQkxMjgKPiArI2RlZmluZSBTQ0xLX01JUElEU0lfMjRNCTEyOQo+ICAjZGVmaW5lIFNDTEtf
VElNRVIxMAkJMTMzCj4gICNkZWZpbmUgU0NMS19USU1FUjExCQkxMzQKPiAgI2RlZmluZSBTQ0xL
X1RJTUVSMTIJCTEzNQo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
