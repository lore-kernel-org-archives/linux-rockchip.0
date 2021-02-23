Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6854BC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 08:05:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 106B364DD0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 08:05:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 106B364DD0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6kv7IVAEnpOUci9UCEpWH7q++5U8S8NhBCwstlWBNew=; b=pg6qr1UXtj6+d0GlMbFE5h03H
	Notifnh4gg/0huQ79ltGMmdauZjGDn69JXZ/7lTjTtxIKcEiJvK9U7rrpXfwdpusjpsXPrDnNcRjm
	vf1X/EDAPZ2R1I/UfUYZH2rho7m8rKs0ODl7r+h5RW3zR5ABX+HWByhYYyXg+obnAjFSfSHHJcfIK
	RRhOF5PQL0kjN/U1FPNPkyV6ZEEw2cTtrRcg+G+LmLq0OhHLvAKB79hxwF0oQaOEYO5/KBQ7VJRui
	9MnOS6PsDrDAvYM3XTZtEQUEATjc0Aw4mzoq3xIDHqux+Bp+b2JNgzanm3GwtuHUDccOJIynayqYP
	COW7Tqe1w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lESgn-0006Ae-EO; Tue, 23 Feb 2021 08:05:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lESgi-00069g-B4; Tue, 23 Feb 2021 08:04:58 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:581e:94a9:9bf9:6630] (unknown
 [IPv6:2a01:e0a:4cb:a870:581e:94a9:9bf9:6630])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7A7F01F45378;
 Tue, 23 Feb 2021 08:04:53 +0000 (GMT)
Subject: Re: [PATCH v3 8/9] dt-bindings: media: nxp,imx8mq-vpu: Update bindings
To: Rob Herring <robh@kernel.org>
References: <20210222122406.41782-1-benjamin.gaignard@collabora.com>
 <20210222122406.41782-9-benjamin.gaignard@collabora.com>
 <20210223003442.GA2516123@robh.at.kernel.org>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <25f30110-d655-2d77-d3b7-30c1c61f6965@collabora.com>
Date: Tue, 23 Feb 2021 09:04:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210223003442.GA2516123@robh.at.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_030456_493309_664D8873 
X-CRM114-Status: GOOD (  16.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: peng.fan@nxp.com, kernel@collabora.com, festevam@gmail.com,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 dan.carpenter@oracle.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDIzLzAyLzIwMjEgw6AgMDE6MzQsIFJvYiBIZXJyaW5nIGEgw6ljcml0wqA6Cj4gT24gTW9u
LCBGZWIgMjIsIDIwMjEgYXQgMDE6MjQ6MDVQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+IFRoZSBjdXJyZW50IGJpbmRpbmdzIHNlZW0gdG8gbWFrZSB0aGUgYXNzdW1wdGlvbiB0
aGF0IHRoZQo+PiB0d28gVlBVcyBoYXJkd2FyZSBibG9ja3MgKEcxIGFuZCBHMikgYXJlIG9ubHkg
b25lIHNldCBvZgo+PiByZWdpc3RlcnMuCj4+IEFmdGVyIGltcGxlbWVudGluZyB0aGUgVlBVIHJl
c2V0IGRyaXZlciBhbmQgRzIgZGVjb2RlciBkcml2ZXIKPj4gaXQgc2hvd3MgdGhhdCBhbGwgdGhl
IFZQVXMgYXJlIGluZGVwZW5kZW50IGFuZCBkb24ndCBuZWVkIHRvCj4+IGtub3cgYWJvdXQgdGhl
IHJlZ2lzdGVycyBvZiB0aGUgb3RoZXIgYmxvY2tzLgo+PiBSZW1vdmUgZnJvbSB0aGUgYmluZGlu
Z3MgdGhlIG5lZWQgdG8gc2V0IGFsbCBibG9ja3MgcmVnaXN0ZXIKPj4gYnV0IGtlZXAgcmVnLW5h
bWVzIHByb3BlcnR5IGJlY2F1c2UgcmVtb3ZpbmcgaXQgZnJvbSB0aGUgZHJpdmVyCj4+IG1heSBh
ZmZlY3Qgb3RoZXIgdmFyaWFudHMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWdu
YXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gdmVyc2lvbiAy
Ogo+PiAtIGJlIG1vcmUgdmVyYm9zZSBhYm91dCB3aHkgSSBjaGFuZ2UgdGhlIGJpbmRpbmdzCj4+
IEtlZXAgaW4gbWluZCB0aGF0IHNlcmllcyBjb21lcyBhZnRlcjogaHR0cHM6Ly93d3cuc3Bpbmlj
cy5uZXQvbGlzdHMvYXJtLWtlcm5lbC9tc2c4NzU3NjYuaHRtbAo+PiB3aXRob3V0IHRoYXQgcmV2
aWV3IGFuZCBhY2sgaXQgd29uJ3Qgd29yawo+IEJldHRlciwgYnV0IHlvdSd2ZSBzdGlsbCBtZW50
aW9uZWQgbm90aGluZyBhYm91dCBicmVha2luZyBjb21wYXRpYmlsaXR5Lgo+IFdoeSBpcyB0aGF0
IG9rYXk/CgpCZWNhdXNlIHRoaXMgcmVnLW5hbWVzIHdhc24ndCB1c2VkIGJlZm9yZSBmb3IgdGhp
cyB2YXJpYW50IHNvIHJlbW92ZSBpdCB3b24ndCBjaGFuZ2UgYW55dGhpbmcuCgo+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
