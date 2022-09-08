Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 453D3ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 08:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmO4w21rybrZWBbfsnjq9DaGeiZu32x/ZFXBw+afn7I=; b=S8svQGsy1ytO0O
	KrvreVsD1XAqb/WK+8sruFOziBhgnStIVd7FM3w5DUtjB6rJy2HdTCOSiZq+SmdSZ+D1/8t4R+EV2
	999dnKxvwIcneOdb8z3/nyaTmfvewVMHL4I5AComBrkvxzunmnggK220IjpYUnIlWMuOTUfDh2EVC
	AbU6qCThOQnOIOUECJoxoDVtnpa8WIpZBQ5+NBGjx0emD5koDsiZqxR45BcAZhz+Knu+o/fGxTLti
	yv2QDUG/QN5nWlxKvQDJ6Bbrz7qw3+6S2jTUGeGWhm5GhViOiVmNtOorHyKP8tagRsdkku9GUV06L
	YMyY4V0A4O8U3uiDh6Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWCsF-0012UC-I3; Thu, 08 Sep 2022 08:26:59 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWCsD-0012Sd-4X
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 08:26:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 9D183CE1ECE;
	Thu,  8 Sep 2022 08:26:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE97DC433D6;
	Thu,  8 Sep 2022 08:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662625608;
	bh=sUV1o+v0ToEvegmITvK2iEIUqmKV/m3rYGgJK8I5bXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YDdQxLRaqSCeBvC9ZukfdGmSyufC9gKMA4ERIeJiAAxBp5luh/a0aasgsNRK6dzLR
	 Lu/hUuEwTQtBYiit/vU9uOp+DWrh25bcJEV4FU6eS4jh8XZxRPPxpAPVbZrf8e1GVt
	 a3/LjxtZ7AUwBimJg4mZf9s/8rtOZf+mrEe+rUrAjojgab55/cVLdESxb1GELdDiLc
	 UZ8KbXhziWLxwO1Wm7sm8DtZ5LV8H79gbgxnMHPYyrFtsFtlIN8+IXnfZXNCDktDeU
	 eC2fHj9AEf/oOL2FTdteclrfdLpdchacreX41feRZTfGujUutUoYVpORwD8vVp7A0Z
	 t4GaJL/nqq5Xw==
Date: Thu, 8 Sep 2022 09:26:41 +0100
From: Lee Jones <lee@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, zhangqing@rock-chips.com,
	zyw@rock-chips.com, jon.lin@rock-chips.com, maccraft123mc@gmail.com,
	sre@kernel.org, heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, philip@pscan.uk, mazziesaccount@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH V10 2/4] mfd: Add Rockchip rk817 battery charger support
Message-ID: <YxmnQQWijnhlSGr4@google.com>
References: <20220827021623.23829-1-macroalpha82@gmail.com>
 <20220827021623.23829-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220827021623.23829-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_012657_500674_E80784D9 
X-CRM114-Status: GOOD (  10.10  )
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

T24gRnJpLCAyNiBBdWcgMjAyMiwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgoKPiBGcm9tOiBDaHJpcyBN
b3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IAo+IEFkZCByazgxNyBjaGFyZ2VyIHN1
cHBvcnQgY2VsbCB0byByazgwOCBtZmQgZHJpdmVyLgo+IAo+IEFja2VkLWZvci1tZmQtYnk6IExl
ZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgTW9y
Z2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXlhIE1hdHVz
emN6eWsgPG1hY2NyYWZ0MTIzbWNAZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21mZC9yazgw
OC5jICAgICAgIHwgMTYgKysrKysrLQo+ICBpbmNsdWRlL2xpbnV4L21mZC9yazgwOC5oIHwgOTEg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgMTA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCkFscmVhZHkgYXBwbGllZC4KCi0t
IApMZWUgSm9uZXMgW+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
