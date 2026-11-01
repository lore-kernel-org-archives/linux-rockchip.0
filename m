Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350F0606A324
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 16:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mWVgZXuW;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=cp7XYZwd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=i2oPPED9TdFvYNEvIl7JfWsrR4ty8EaYBDvj9+Glu1I=; b=mWVgZXuWues8bkuZhbWbhWLSpP
	OgGL7za9RkvqRWWLC4jCPVsBuCEOKOaEJTshLDaCFGYCA2r/uVJrkdU9C4ZYLsuY8Jz6vXUxb6V0r
	eKba6aN3B/bXEb+wxQpLQKJ/6xpU3vrjN7C99MGTETlHWuQh4m+x6/MJycyc9yXHV2DLYQbLOnYMh
	FJSgwJRgibwkg2DG1RM1pt3+CLF6Y209VHkMFzfP4CfriGCCsAEzlsJuu7+M9/XtUZW1T1Xdc1DOk
	NawJidkNUkbIPUfANf3jabQ4MB9VuNJCY4qyujg7VPp/HKGFWX5lsxD8U+Nw+Wgt1ByMLk3O2gbH3
	4222aB5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNY8N-0000000Ef9C-19Cs;
	Sun, 01 Nov 2026 16:10:15 +0000
Received: from mail-m12829.netease.com ([103.209.128.29])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNY8J-0000000Ef8b-2fA8;
	Sun, 01 Nov 2026 16:10:14 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 531304970;
	Mon, 2 Nov 2026 00:10:07 +0800 (GMT+08:00)
Message-ID: <b8221ba4-dccb-42f5-ae77-a6c087fa1d05@rock-chips.com>
Date: Mon, 2 Nov 2026 00:10:04 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable SD UHS-I on Firefly-RK3399
To: Yaozhong Li <yaozhonguwl@gmail.com>, Heiko Stuebner <heiko@sntech.de>
References: <20260922055011.14972-1-yaozhonguwl@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260922055011.14972-1-yaozhonguwl@gmail.com>
X-HM-Tid: 0aa197e014ab03a4kunmba3f3551368d1f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSkhPVkhITx5KHk4dHhlOQ1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=cp7XYZwdXaDlzvLQMrFBjXRj7KnWLLjISdqCP97+EsTik0Zpfwho8VnY21EIOyAo31Ig6vU8Ht0t3dQ1l4xscPmH6rW1VIUfMlfEx5abbUbqSGmw0zaF9050tCQI2BLEYnpoj1R12GL2bWwEnJCa0Pek8lu3edxYe7XhFm9c42Q=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=+j7WtGz1aWIcd5SgWNnC84N10690oBDHORBkMbSfAj4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_081012_249874_EC9EA80E 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYvMDkvMjIg5pif5pyf5LqMIDEzOjUwLCBZYW96aG9uZyBMaSDlhpnpgZM6Cj4gVGhl
IFNEIHNsb3Qgb24gdGhpcyBib2FyZCBzdGF5cyBhdCA1MCBNSHogd2l0aCAzLjNWIHNpZ25hbGxp
bmcuIFRoZQoKLi4uCgo+IAo+IEkgaGF2ZSBubyBzY2hlbWF0aWMgZm9yIHRoaXMgYm9hcmQuIFRo
ZSBjbGFpbSBhYm91dCB3aGF0IExETzQgZmVlZHMKPiByZXN0cyBvbiB0aGUgdmVuZG9yIGZpcm13
YXJlIGRldmljZSB0cmVlIHBsdXMgdGhlIG1lYXN1cmVtZW50cyBhYm92ZS4KPiAKCkl0J3MgZWFz
eSB0byBmaW5kIG9uZToKaHR0cHM6Ly9naXRodWIuY29tL2FybWJpYW4vYXJtYmlhbi5naXRodWIu
aW8vYmxvYi9tYWluL2JvYXJkLXNjaGVtYXRpY3MvZmlyZWZseS1yazMzOTkucGRmCgpUb28gYmFk
IGl0IHdhcyBkZXNpZ25lZCB0aGlzIHdheSEgV2hhdCBpZiBzZGlvLXdpZmkgaXMgd29ya2luZyBv
biBVSFMKbW9kZWJ1dCBwZW9wbGUgaW5zZXJ0IGEgSGlnaFNwZWVkIG9ubHkgc2QgY2FyZD8KCj4g
VGhlIGFuYWx5c2lzIGFuZCB0aGUgY29tbWl0IG1lc3NhZ2Ugd2VyZSBkcmFmdGVkIHdpdGggdGhl
IGhlbHAgb2YgYW4KPiBMTE0tYmFzZWQgYXNzaXN0YW50IChDbGF1ZGUgQ29kZSksIGNyb3NzLXJl
dmlld2VkIHdpdGggYSBzZWNvbmQgb25lCj4gKE9wZW5BSSBDb2RleCkuIFRoZSBkZXZpY2UgdHJl
ZSBjaGFuZ2UsIHRoZSBtZWFzdXJlbWVudHMgYW5kIHRoZSBmaW5hbAo+IHdvcmRpbmcgYXJlIG1p
bmUuCj4gCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1maXJlZmx5LmR0
cyB8IDMgKystCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LWZpcmVmbHkuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZmlyZWZs
eS5kdHMKPiBpbmRleCAwNTY4ZGZhLi43Y2FiYmMxIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWZpcmVmbHkuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMKPiBAQCAtNzc3LDcgKzc3Nyw2IEBA
ICZzZGlvMCB7Cj4gICAKPiAgIAkvKiBQb3dlciBzdXBwbHkgKi8KPiAgIAl2cW1tYy1zdXBwbHkg
PSA8JnZjYzF2OF9zMz47CS8qIElPIGxpbmUgKi8KPiAtCXZtbWMtc3VwcGx5ID0gPCZ2Y2Nfc2Rp
bz47CS8qIGNhcmQncyBwb3dlciAqLwo+ICAgCj4gICAJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4g
ICAJI3NpemUtY2VsbHMgPSA8MD47Cj4gQEAgLTgwNCw2ICs4MDMsOCBAQCAmc2RtbWMgewo+ICAg
CW1heC1mcmVxdWVuY3kgPSA8MTUwMDAwMDAwPjsKPiAgIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1
bHQiOwo+ICAgCXBpbmN0cmwtMCA9IDwmc2RtbWNfY2xrICZzZG1tY19jbWQgJnNkbW1jX2J1czQ+
Owo+ICsJc2QtdWhzLXNkcjEwNDsKPiArCXZxbW1jLXN1cHBseSA9IDwmdmNjX3NkaW8+Owo+ICAg
CXN0YXR1cyA9ICJva2F5IjsKPiAgIH07Cj4gICAKPiAKPiBiYXNlLWNvbW1pdDogOTQwZGU1OTBi
ODM5ZjcxZDZkYzg0NjE2MDUzNGJmMjAyNDAxYjhiNwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
