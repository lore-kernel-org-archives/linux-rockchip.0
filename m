Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42757EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jun 2023 11:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGxV7zwTHYJv69kuIbjm1MyVxmmn1PM2XWYLMkBukFY=; b=3OlObood5wSVXe
	m8tsIkHhOuuTT8czErE8bQ84ttcADCRhWBbSO1T3eGRyW1FRhYmWty+1lBWthwEdszL0NRbNlxmm+
	tgaAY+3GlFd2sYvtClygE/OqTqYR/2u8QMQ3iWySCORp+Sp1ZffjO8JTirMmU83afP4qtt5Z4zHwv
	7COPwjm9H5gzSnddNTXPaRTjevAAobFEsoUeSOTJJnITvUzL0VonMSauwpEEM8ypuo1Ob8Y3hYqsF
	w1cNhkrHEtRaxXL6xw4qfazBUN7fAZYKk2CJJQyG0XbX4VXMF3+O5q2ALrasMK30ynMyet3BaaixC
	2Yh+P2bNNg1UFR2W9Vgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qFC2a-003ZLa-1a;
	Fri, 30 Jun 2023 11:11:52 +0000
Received: from galois.linutronix.de ([193.142.43.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qFC2X-003ZKg-0M;
	Fri, 30 Jun 2023 11:11:50 +0000
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1688123506;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LBi2xn+NWrUQzLbxhPhUtfNKTaMAus8XdZkjy6jHSNM=;
	b=418LKbfzErO8aWbRiCy6RicHEfWmrfLoIcdhuAdqKEQ/ZbLyV5fOr9TL2jgmxbiB1UJ3bl
	L7RSNcul7PGGKtMoVG58xOTYMswwl0fvl2x6Gy3oeK78nmBEYbydnR6FVElSSy3QDkkQS4
	aNdClghzIVSlb1kIYZa+lxNsG6dKqXTENfkuKKK8H3fwdANqYJnMII3qHGkdR7RslbGNzH
	rMZSPPYA/DaN+m+jbNSRocp1b1dwjRh2NBrN92RDYtVGXNSXIAHcc+RtRHjhZQcR/LI027
	/C9gb1mFySWZHISgYn13LNhN7Izd0dCqTTysj0/z5qIQHqLoTPKk/6VDB9l9vg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1688123506;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LBi2xn+NWrUQzLbxhPhUtfNKTaMAus8XdZkjy6jHSNM=;
	b=jVPJlwFMcCzb0wYuBYE9xW6cZEwUMtJR24us2ZwmMLiYkh/Ya8FPIpIwdTH1G8h/qMJoP9
	yy6W7RPJnQ28ZkBA==
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Yangtao Li
 <frank.li@vivo.com>
Cc: miquel.raynal@bootlin.com, rafael@kernel.org, daniel.lezcano@linaro.org,
 amitk@kernel.org, rui.zhang@intel.com, mmayer@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, thara.gopinath@gmail.com,
 heiko@sntech.de, mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com,
 srinivas.pandruvada@linux.intel.com,
 DLG-Adam.Ward.opensource@dm.renesas.com, shangxiaojing@huawei.com,
 bchihi@baylibre.com, wenst@chromium.org, hayashi.kunihiko@socionext.com,
 niklas.soderlund+renesas@ragnatech.se, chi.minghao@zte.com.cn,
 johan+linaro@kernel.org, jernej.skrabec@gmail.com,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 01/15] genirq/devres: Add error information printing
 for devm_request_threaded_irq()
In-Reply-To: <20230627110025.vgtplc6nluiiuvoh@pengutronix.de>
References: <20230627101215.58798-1-frank.li@vivo.com>
 <20230627110025.vgtplc6nluiiuvoh@pengutronix.de>
Date: Fri, 30 Jun 2023 13:11:46 +0200
Message-ID: <87h6qpyzkd.ffs@tglx>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230630_041149_303357_2B300F0A 
X-CRM114-Status: GOOD (  16.12  )
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

T24gVHVlLCBKdW4gMjcgMjAyMyBhdCAxMzowMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4g
T24gVHVlLCBKdW4gMjcsIDIwMjMgYXQgMDY6MTI6MDFQTSArMDgwMCwgWWFuZ3RhbyBMaSB3cm90
ZToKPgo+IFdoaWxlIEkgYXNzdW1lIGNoYW5naW5nIHRvIGRldl9lcnJfcHJvYmUgaXMgYSByZXN1
bHQgb2YgbXkgY29uY2VybiB0aGF0Cj4gbm8gZXJyb3Igc2hvdWxkIGJlIHByaW50ZWQgd2hlbiBy
Yz0tRVBST0JFREVGRVIsIG15IG90aGVyIGNvbmNlcm4gdGhhdAo+IGFkZGluZyBhbiBlcnJvciBt
ZXNzYWdlIHRvIGEgZ2VuZXJpYyBhbGxvY2F0aW9uIGZ1bmN0aW9uIGlzIGEgYmFkIGlkZWEKPiBz
dGlsbCBzdGFuZHMuCgpJIGFncmVlIGluIGdlbmVyYWwsIGJ1dCBpZiB5b3UgYWN0dWFsbHkgbG9v
ayBhdCB0aGUgY2FsbCBzaXRlcyBvZgpkZXZtX3JlcXVlc3RfdGhyZWFkZWRfaXJxKCkgdGhlbiB0
aGUgdmFzdCBtYWpvcml0eSBvZiB0aGVtIHByaW50IG1vcmUgb3IKbGVzcyBsb3VzeSBlcnJvciBt
ZXNzYWdlcy4gQSBxdWljayBncmVwL3NlZC9hd2svc29ydC91bmlxIHJldmVhbGVkCgogICAgIDUx
OSBtZXNzYWdlcyB0b3RhbCAodGhlcmUgYXJlIHByb2JhYmx5IG1vcmUpCgogICAgIDM1MiB1bmlx
dWUgbWVzc2FnZXMKCiAgICAgMzIzIHVuaXF1ZSBtZXNzYWdlcyBhZnRlciBsb3dlciBjYXNpbmcK
CiAgICAgICAgIFRob3NlIDMyMyBhcmUgbW9zdGx5IGp1c3QgdmFyaWFudHMgb2YgdGhlIHNhbWUg
cGF0dGVybnMgd2l0aCBzbGlnaHQKICAgICAgICAgbW9kaWZpY2F0aW9ucyBpbiBmb3JtYXR0aW5n
IGFuZCBpbmZvcm1hdGlvbiBwcm92aWRlZC4KCiAgICAgMTg2IG9mIHRoZXNlIG1lc3NhZ2VzIGRv
IG5vdCBkZWxpdmVyIGFueSB1c2VmdWwgaW5mb3JtYXRpb24sCiAgICAgICAgIGUuZy4gIm5vIGly
cSIsICIKCiAgICAgVGhlIG1vc3QgdXNlZnVsIG9uZSBvZiBhbGwgaXM6ICJjb3VsZCByZXF1ZXN0
IHdha2V1cCBpcnE6ICVkIgoKU28gdGhlcmUgaXMgY2VydGFpbmx5IGFuIGFyZ3VtZW50IHRvIGJl
IG1hZGUgdGhhdCB0aGlzIHBhcnRpY3VsYXIKZnVuY3Rpb24gc2hvdWxkIHByaW50IGEgd2VsbCBm
b3JtYXR0ZWQgYW5kIGluZm9ybWF0aXZlIGVycm9yIG1lc3NhZ2UuCgpJdCdzIG5vdCBhIGdlbmVy
YWwgYWxsb2NhdG9yIGxpa2Uga21hbGxvYygpLiBJdCdzIHNwZWNpYWxpemVkIGFuZCBpbiB0aGUK
dmFzdCBtYWpvcml0eSBvZiBjYXNlcyBmYWlsaW5nIHRvIHJlcXVlc3QgdGhlIGludGVycnVwdCBj
YXVzZXMgdGhlCmRldmljZSBwcm9iZSB0byBmYWlsLiBTbyBoYXZpbmcgcHJvcGVyIGFuZCBjb25z
aXN0ZW50IGluZm9ybWF0aW9uIHdoeQp0aGUgZGV2aWNlIGNhbm5vdCBiZSB1c2VkIF9pc18gdXNl
ZnVsLgoKWWFuZ3RhbzogVGhlIHdheSBob3cgdGhpcyBpcyBhdHRlbXB0ZWQgaXMgbm90IHVzZWZ1
bCBhdCBhbGwuCgogICAgMSkgVGhlIGNoYW5nZWxvZyBpcyB3b3JkIHNhbGFkIGFuZCBwcm92aWRl
cyAwIHJhdGlvbmFsZQoKICAgICAgIEFsc28gc3VjaCBzZXJpZXMgcmVxdWlyZSBhIGNvdmVyIGxl
dHRlci4uLgoKICAgIDIpIFRoZSBkZXZfZXJyKCkgd2hpY2ggaXMgYWRkZWQgaXMgbm90IGluZm9y
bWF0aXZlIGF0IGFsbCBhbmQgY2Fubm90CiAgICAgICByZXBsYWNlIGFjdHVhbGx5IHVzZWZ1bCBl
cnJvciBtZXNzYWdlcy4gSXQncyBub3QgdGhhdCBoYXJkIHRvCiAgICAgICBtYWtlIGl0IHVzZWZ1
bC4KCiAgICAyKSBBZGRpbmcgdGhlIHByaW50a3MgdW5jb25kaXRpb25hbGx5IGZpcnN0IHdpbGwg
ZW1pdCB0d28gbWVzc2FnZXMKICAgICAgIHdpdGggZGlmZmVyZW50IGNvbnRlbnQuCgogICAgICAg
VGhpcyBpcyBub3QgaG93IHN1Y2ggY2hhbmdlcyBhcmUgZG9uZS4KCiAgICAgICBUaGUgcHJvcGVy
IGFwcHJvYWNoIGlzIHRvIGNyZWF0ZSBhIHdyYXBwZXIgZnVuY3Rpb24gd2hpY2ggZW1pdHMKICAg
ICAgIHRoZSBlcnJvciBtZXNzYWdlOgoKICAgICAgIHdyYXBwZXIoLi4uLi4sIGNvbnN0IGNoYXIg
KmluZm8pCiAgICAgICB7CiAgICAgICAgICAgIHJldCA9IGRldm1fcmVxdWVzdF90aHJlYWRlZF9p
cnEoLi4uLik7CiAgICAgICAgICAgIGlmIChyZXQgPCAwKSB7CiAgICAgICAgICAgICAgIGRldl9l
cnIoZGV2LCAiRmFpbGVkIHRvIHJlcXVlc3QgJXNpbnRlcnJ1cHQgJXUgJXMgJXM6ICVkXG4sCiAg
ICAgICAgICAgICAgICAgICAgICAgdGhyZWFkX2ZuID8gInRocmVhZGVkICIgOiAiIiwKICAgICAg
ICAgICAgICAgICAgICAgICBpcnEsIGRldm5hbWUsIGluZm8gPyA6ICIiLCByZXQpOwogICAgICAg
ICAgICB9CiAgICAgICAgICAgIHJldHVybiByZXQ7CiAgICAgICB9CgogICAgICAgVGhlbiBjb252
ZXJ0IHRoZSBjYWxsc2l0ZXMgb3ZlciBvbmUgYnkgb25lIHdpdGggcHJvcGVyCiAgICAgICBjaGFu
Z2Vsb2dzIGFuZCBqdXN0aWZpY2F0aW9uLgoKICAgICAgIFNlZT8KClRoYW5rcywKCiAgICAgICAg
dGdseAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
