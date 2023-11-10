Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7214EC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 08:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rAmV+zP8xtFw1pw0C6mvDgus5ts3vxye6uQh9iyHZ40=; b=T2hG1X8EV47jap
	cw6RrC0RbiFPl2Sm+ct1Bz6SdhHpgDk3TyH5syMAJlR1nyFZXH4fhvM5yy2zRU0EBfNnN2QrNNKAu
	piX/8fP4/daYVBwi9ryluaY25vZ4kFH31GQ7xcNrivkI100F1//WhbA8eHDmzbNwWsNNqvP4fG+hk
	xrRJ31xPqhQgr9LJ/iD5dqS1kEEgB9W7g6/8tfH/ATFqCUpRPyuQOA51Eb9iOxbezNYewLE1iFBoP
	GdVcYOl5YfhSuVCcmIZr4wSJ7s/Sd6ekfQwaTvUH8JYRG6XFqav03cGNU51WE7DIyD6EG9SCmGXud
	t83LaC2Jknv7u0h3QxRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1MuC-0085rM-2O;
	Fri, 10 Nov 2023 08:30:20 +0000
Received: from mail-m11866.qiye.163.com ([115.236.118.66])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Mu7-0085po-2e;
	Fri, 10 Nov 2023 08:30:18 +0000
DKIM-Signature: a=rsa-sha256;
	b=XiqeolchP3njZmt+f79epZWTdAxsmqLbScSw8AQO4RUgwBBXf+74Ueu0wP02Efa2A9iHxM/ISi7pO+dSUve2pewsyyCdKSJDudwTjzFYJ8OQzxeDftCU/zmSx3PalWGuNWg09g70Sjg54LORI0RikiCZLPhc6PlfQoA+UzZSkys=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=c8gwyP0bjpv+fHqfLFg4bZJyzgVrMfpkxHsJ3EbC6LY=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.49] (unknown [58.22.7.114])
	by mail-m11877.qiye.163.com (Hmail) with ESMTPA id E1F2F400389;
	Fri, 10 Nov 2023 16:29:35 +0800 (CST)
Message-ID: <01d2844e-8a9f-d529-c523-c846760bc31b@rock-chips.com>
Date: Fri, 10 Nov 2023 16:29:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 3/3] clk: rockchip: rk3588: Adjust the GATE_LINK
 parameter
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
 heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 andy.yan@rock-chips.com
References: <20231110020358.12840-1-zhangqing@rock-chips.com>
 <20231110020358.12840-4-zhangqing@rock-chips.com>
 <d36d4f7e-03be-4018-be5d-0898f2ae6a15@linaro.org>
From: zhangqing <zhangqing@rock-chips.com>
In-Reply-To: <d36d4f7e-03be-4018-be5d-0898f2ae6a15@linaro.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhNH1ZOS0MeTx9ISh9NHR9VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8bb859d2e72eb3kusne1f2f400389
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OlE6PDo*ODw4MQweIR1MTgJP
	CVEKCS5VSlVKTUJCTUtPQkxMSUhCVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhDQ0M3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_003016_337906_F390D843 
X-CRM114-Status: UNSURE (   5.07  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CuWcqCAyMDIzLzExLzEwIDE1OjQ2LCBLcnp5c3p0b2YgS296bG93c2tpIOWGmemBkzoKPiBPbiAx
MC8xMS8yMDIzIDAzOjAzLCBFbGFpbmUgWmhhbmcgd3JvdGU6Cj4+IEV4cG9ydCBQQ0xLX1ZPMUdS
RiBjbGsgaWQuCj4gSWYgdGhlIGNsb2NrIGlzIGV4cG9ydGVkLCBob3cgZG8geW91IGdldCBpdHMg
cmVmZXJlbmNlPwpUaGUgZXhwb3J0IG9mIHRoZSBjbG9jayBoYXMgYmVlbiBhYmFuZG9uZWQsIGFu
ZCBtYXJrIHRoZSBwY2xrX3ZvMWdyZiBhcyAKQ0xLX0lTX0NSSVRJQ0FMLgpGaXggVGhlIGNvbW1p
dCBtZXNzYWdlIGxhdGVyLgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+Ci0tIArlvKDm
mbQK55Ge6Iqv5b6u55S15a2Q6IKh5Lu95pyJ6ZmQ5YWs5Y+4ClJvY2tjaGlwIEVsZWN0cm9uaWNz
IENvLixMdGQK5Zyw5Z2A77ya56aP5bu655yB56aP5bee5biC6ZOc55uY6Lev6L2v5Lu25aSn6YGT
ODnlj7fova/ku7blm61B5Yy6MjHlj7fmpbwKQWRkOk5vLjIxIEJ1aWxkaW5nLCBBIERpc3RyaWN0
LCBOby44OSBTb2Z0d2FyZSBCb3VsZXZhcmQgRnV6aG91LCBGdWppYW4gMzUwMDAzLCBQLlIuQ2hp
bmEKVGVsOis4Ni0wNTkxLTgzOTkxOTA2LTg2MDEK6YKu57yW77yaMzUwMDAzCkUtbWFpbDplbGFp
bmUuemhhbmdAcm9jay1jaGlwcy5jb20KKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgrkv53lr4bmj5DnpLrv
vJrmnKzpgq7ku7blj4rlhbbpmYTku7blkKvmnInmnLrlr4bkv6Hmga/vvIzku4Xlj5HpgIHnu5nm
nKzpgq7ku7bmiYDmjIfnibnlrprmlLbku7bkurrjgILoi6XpnZ7or6XnibnlrprmlLbku7bkurrv
vIzor7fli7/lpI3liLbjgIHkvb/nlKjmiJbmiqvpnLLmnKzpgq7ku7bnmoTku7vkvZXlhoXlrrnj
gILoi6Xor6/mlLbmnKzpgq7ku7bvvIzor7fku47ns7vnu5/kuK3msLjkuYXmgKfliKDpmaTmnKzp
gq7ku7blj4rmiYDmnInpmYTku7bvvIzlubbku6Xlm57lpI3pgq7ku7bmiJblhbbku5bmlrnlvI/l
jbPliLvlkYrnn6Xlj5Hku7bkurrjgILnpo/lt57nkZ7oiq/lvq7nlLXlrZDmnInpmZDlhazlj7jm
i6XmnInmnKzpgq7ku7bkv6Hmga/nmoTokZfkvZzmnYPlj4rop6Pph4rmnYPvvIznpoHmraLku7vk
vZXmnKrnu4/mjojmnYPorrjlj6/nmoTkvrXmnYPooYzkuLrjgIIKCklNUE9SVEFOVCBOT1RJQ0U6
IFRoaXMgZW1haWwgaXMgZnJvbSBGdXpob3UgUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBMdGQg
LlRoZSBjb250ZW50cyBvZiB0aGlzIGVtYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgbWF5IGNvbnRh
aW4gaW5mb3JtYXRpb24gdGhhdCBpcyBwcml2aWxlZ2VkLCBjb25maWRlbnRpYWwgYW5kL29yIGV4
ZW1wdCBmcm9tIGRpc2Nsb3N1cmUgdW5kZXIgYXBwbGljYWJsZSBsYXcgYW5kIHJlbGV2YW50IE5E
QS4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgeW91IGFyZSBoZXJlYnkg
bm90aWZpZWQgdGhhdCBhbnkgZGlzY2xvc3VyZSwgY29weWluZywgZGlzdHJpYnV0aW9uLCBvciB1
c2Ugb2YgdGhlIGluZm9ybWF0aW9uIGlzIFNUUklDVExZIFBST0hJQklURUQuIFBsZWFzZSBpbW1l
ZGlhdGVseSBjb250YWN0IHRoZSBzZW5kZXIgYXMgc29vbiBhcyBwb3NzaWJsZSBhbmQgZGVzdHJv
eSB0aGUgbWF0ZXJpYWwgaW4gaXRzIGVudGlyZXR5IGluIGFueSBmb3JtYXQuIFRoYW5rIHlvdS4K
CioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
