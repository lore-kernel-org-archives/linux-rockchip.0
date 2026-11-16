Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E03D606A31C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 02:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=knJc1b9s;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=WxeZfkmZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fzILeD3WDGM21LhCdQGPsm+jiyBS4dsuP9npYQZK2/o=; b=knJc1b9sGGy6kHpY7i6TAxlR+Z
	po4JBkoj4Gm4wtcDBHMNqqRiYVXj0SMMKRIJhUuOuAn6TEzh1Wl12KGcV1R0yu35Z2u3P4mhi1+DH
	QtU4tm7P1+dYI77Yf5hiGUsPtlCNDYPi5pgLB8pNCTNBlIuIVkR24vaUIFx7DLlnB4/ic1dg1IUpr
	/8hx9jsdqQhzQPMsypUSAVh0KocGuCMjv7fBNmjGwieb2389Hw5NyuXJhSB+Nbh0R8I36HR0tepP9
	Kl/l/XJlHoSpOC16X2Sk00zf2M5aELVOOpyg6T20krndI1UIU6oMfisMOsphU7lVRZ7o9iY5UNKds
	fiu97u5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSmVR-00000000wcL-09YE;
	Mon, 16 Nov 2026 02:31:41 +0000
Received: from mail-m6053.netease.com ([210.79.60.53])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSmVM-00000000waa-3z87;
	Mon, 16 Nov 2026 02:31:39 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 54c419283;
	Mon, 16 Nov 2026 10:31:24 +0800 (GMT+08:00)
Message-ID: <eb51e0bf-148a-4d8b-8110-b65094fa1b43@rock-chips.com>
Date: Mon, 16 Nov 2026 10:31:23 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Lucas Tanure <tanure@linux.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, stable@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v2] phy: rockchip: naneng-combphy: fix RK3588 SATA
 pipe_con1 register offset
To: ricardo@pardini.net, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <20261115-rk3588-combphy-sata2-6g-v2-1-778e0e8011fe@pardini.net>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261115-rk3588-combphy-sata2-6g-v2-1-778e0e8011fe@pardini.net>
X-HM-Tid: 0aa1e231e94703a4kunm17ffdc46316b32
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZT0lOVk5NT0keGBlITkhPTVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=WxeZfkmZ5HroSFzNuKJdwY9gasYUv4nbix2/cXrP2RmCjDFaiag8JqeXgy6Lw32LPAlnUK/JDwgljR25116G2CTQRGcyB6duFeqPbq36WeCpMq1ZX0VQ3do+LrDW58KNesZ5AexQivXnWkr6tRuGJz1XIZfXwn2I6BRkg81Bipg=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=hfqntSgZEOiSlMbDpZIWb1KiGQmsm3Ec+5CbGoJgk7E=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_183137_577589_E9FD95E4 
X-CRM114-Status: GOOD (  12.88  )
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYvMTEvMTUg5pif5pyf5pelIDIzOjQ4LCBSaWNhcmRvIFBhcmRpbmkgdmlhIEI0IFJl
bGF5IOWGmemBkzoKPiBGcm9tOiBZaWZlbmcgWmhhbyA8eWlmZW5nLnpoYW9Acm9jay1jaGlwcy5j
b20+Cj4gCj4gT24gUkszNTg4LCB0aGUgc2F0YTIgUEhZIHNwZWVkIGlzIHNlbGVjdGVkIGJ5IHNh
dGEyX3BoeV9zcGRtb2RlIGluCj4gUEhQX0dSRl9QSFBfQ09OMVsxOjBdIChvZmZzZXQgMHgwMDA0
KSwgd2l0aCBzYXRhMl9waHlfcnhfZXJyIGluIGJpdCAyLgo+IHJrMzU4OF9jb21icGh5X2dyZmNm
Z3MgaGFzIHBpcGVfY29uMV9mb3Jfc2F0YSBhdCBvZmZzZXQgMHgwMDAwIHRob3VnaCwKPiBzbyB0
aGUgdmFsdWUgMHgyICg2LjAgR2IvcywgcnhfZXJyIGNsZWFyZWQpIGVuZHMgdXAgaW4gUEhQX0dS
Rl9QSFBfQ09OMAo+IGFuZCBDT04xIGlzIG5ldmVyIHdyaXR0ZW4uCj4gCj4gVGhpcyBsZWF2ZXMg
c2F0YTIgYXQgaXRzIDEuNSBHYi9zIHJlc2V0IHZhbHVlLCBzbyB0aGUgbGluayBvbmx5IHRyYWlu
cwo+IGF0IDEuNSBHYi9zLCBldmVuIHdpdGggYSA2IEdiL3MgY2FwYWJsZSBkaXNrIGFuZCBubyBT
Q29udHJvbCBzcGVlZAo+IGxpbWl0LiBzYXRhMCBhbmQgc2F0YTEgYXJlIG5vdCBhZmZlY3RlZDog
dGhlaXIgc3BlZWQgZmllbGRzIGFyZSBpbgo+IFBIUF9HUkZfUEhQX0NPTjAgYW5kIGFyZSBzZXQg
YnkgcGlwZV9jb24wX2Zvcl9zYXRhLgo+IAo+IFRoZSBtaXNwbGFjZWQgd3JpdGUgYWxzbyBsYW5k
cyBpbiBQSFBfR1JGX1BIUF9DT04wWzI6MF0sIHdoaWNoIGFyZSB0aGUKPiBQQ0llIGxpbmsgcmVz
ZXQgZ3JhbnQgYml0cywgYW5kIHR1cm5zIG9uIHRoZSBvbmUgZm9yIHBjaWUzeDIgd2hlbmV2ZXIg
YQo+IGNvbWJwaHkgaXMgcHV0IGluIFNBVEEgbW9kZS4gTm8gZWZmZWN0IGZyb20gdGhhdCBpcyBr
bm93biwgYnV0IHRoaXMKPiBzdG9wcyBpdCB0b28uCj4gCj4gVGhlIHJlZ2lzdGVyIGxheW91dCBp
cyBkZXNjcmliZWQgaW4gdGhlIFJLMzU4OCBUUk0gVjEuMCBQYXJ0MSwgc2VjdGlvbgo+IDYuMTcg
IlBIUF9HUkYgUmVnaXN0ZXIgRGVzY3JpcHRpb24iLgo+IAo+IFRlc3RlZCB3aXRoIGFuIG1TQVRB
IFNTRCBvbiBzYXRhMiAoY29tYnBoeTJfcHN1KS4gQmVmb3JlOgo+IAo+ICAgIGF0YTI6IFNBVEEg
bGluayB1cCAxLjUgR2JwcyAoU1N0YXR1cyAxMTMgU0NvbnRyb2wgMzAwKQo+ICAgIFRpbWluZyBP
X0RJUkVDVCBkaXNrIHJlYWRzOiAzNzQgTUIgaW4gMy4wMSBzZWNvbmRzID0gMTI0LjQ1IE1CL3Nl
Ywo+IAo+IEFmdGVyOgo+IAo+ICAgIGF0YTI6IFNBVEEgbGluayB1cCA2LjAgR2JwcyAoU1N0YXR1
cyAxMzMgU0NvbnRyb2wgMzAwKQo+ICAgIFRpbWluZyBPX0RJUkVDVCBkaXNrIHJlYWRzOiAxMjY2
IE1CIGluIDMuMDAgc2Vjb25kcyA9IDQyMS43OCBNQi9zZWMKPiAKClJldmlld2VkLWJ5OiBTaGF3
biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
