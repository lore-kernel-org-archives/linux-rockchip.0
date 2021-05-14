Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1610AC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 15:50:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8473161444
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 15:50:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8473161444
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FwZo/JSpiUSmdrQf7NFfNk9QjD0tOQjFST8OdSBnTIE=; b=YcKnlv/LmaU11NyozGNW4PYdT
	FPQRX3LrZmlZk6YMKQEt67kvwSDAACKAETBOgMVjLc4TVgk6R+oDbJLriKmZe0YVxS16Nt77+8dav
	HA4fnGJSUupsWS+Z0X/0YPOlyK5EBXJBw282ceeM154TbHZ06IePk95qX4Pluqf0unGcB/UUvUc4p
	69MEVi813CjAbr8U+mI/Zvopd3BHRCJudJJIRkHThrpUM5FI6PvK7Gm43GbFRoSF/3b63paj/Alea
	WrAXCW2+XJbyhnnrC5Zbrn77/3iPe4z7kdHfqgxwyRLnFG9nXNjkYzcuEoAu6LkD1x+vNI71P9S+t
	Hu/uK/Wvg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lha4z-008Qn0-9Y; Fri, 14 May 2021 15:50:21 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lha4w-008Qmr-Hb
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 15:50:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=sZ49ShKIaNwQHidJObzN6bEDvol7JHlJL1Wi/UaAnxU=; b=H9Pk3Zd8phZtSVAsduCXuUpbOJ
 rLUmXNskkRbZ/H+YH8+lH5ITWal3YRtWiIgVkUYsNLya4uxe8VsbfLQ+kgzwW5FqV/MAeNXKzRY7E
 YsUZOQyCRXZnOkCO4nPrFVO+vZcllV3/mWQph0Wwi1ESDHdUk8RJI0Ite0NvMeZU3xGjBdTiE6Qo9
 xPpyGJgg/rREhWyfNXHulj6yEiJvGFPVhU+IXijG8V51GaP8bsAVj6iv5D/HqScVZjh07fyi0RGLI
 jFFLDM909KRwZtnXTu+XaIg8VFhriClvOJWb/jtriKCYwVqB4YjHi1nQNSjnHp93h9lGinZDwvhfd
 zy1Wb27A==;
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lha4s-00C5pu-EI
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 15:50:17 +0000
Received: by mail-ot1-x333.google.com with SMTP id
 v19-20020a0568301413b0290304f00e3d88so5678767otp.4
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 08:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=sZ49ShKIaNwQHidJObzN6bEDvol7JHlJL1Wi/UaAnxU=;
 b=GYXaNZsWNePfNOac3fPkooPRbg2kZJTHNs0N3Z/eJHHA38WTiqQPDaKCwKtavhEm/c
 UoCfL76HrqFIZY80AwGm2dQmbWDrF4Qkh1lVKfnwglYXGFhOwvy99xZi8X48tYPBPTVv
 XsGTbvy6PsPq7y96LlqpK7Ee+7P1G1vPNgaoK04p0SfYcapVAqlgNzlV27K8Wp5g4dPM
 iAQTOS17OGxguKFPuy0asOnVZNwrJNcD4DIhlZRlA67dV2IdiHt22pHCbfMtdsfHfE81
 yASkmbL5IrTY2k7ZueMZy7vuY44aBvN9C3um0OFqTuJcT7fG81/9pcKeu4gdZzdnzpOE
 Ogdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=sZ49ShKIaNwQHidJObzN6bEDvol7JHlJL1Wi/UaAnxU=;
 b=fc3AgOEEzwq5WbshZf69bOL40lc3bB7vjfgjoDHM2VIUYhc5N63EVuE2Mzv2W1OFei
 J7hXpj68EmZsYgtlZR4MbgJ8pfm5a1wIE64ku+GOW/aKJdFrC5v3SlJTtHuAQcALIUUg
 New0oQptCaePFk6cO53MR8NaCh0x23m60PdDXKdCh8KR/Wpa7EOJC1dJ6rNpoL6vsJiB
 7IvWUgrNVw+S4pBi2S6a9MCpjgAt7n5gfqNYy+zpRa/j8nYH6SYAVNHatwN0+gXS7wN3
 ADTdPxuc3SLuzn3uCSSvoQqStcJf8MXGfUuuYHhMWifzNz+l6NiUDF+UgbOs9zOmzmTh
 TegA==
X-Gm-Message-State: AOAM531by8QC63Rp0iJdLXagkZzJ1MuNu7WW6Xnf2BZglrMsqCC4CQE3
 wOEYq2vLjdnEq96iDbpxY2o=
X-Google-Smtp-Source: ABdhPJxjeIcCmjTfmhzVGhK3314cJcUyudKyb+hUO6U7bkwBaEpW9n6IfEK1qsbDY4o9ghN6dT0R/Q==
X-Received: by 2002:a9d:6e92:: with SMTP id a18mr40646346otr.169.1621007411636; 
 Fri, 14 May 2021 08:50:11 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id g11sm1263544oif.27.2021.05.14.08.50.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 08:50:10 -0700 (PDT)
Date: Fri, 14 May 2021 10:50:08 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v9 1/4] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210514155008.GA5719@wintermute.localdomain>
References: <20210505140854.15929-1-macroalpha82@gmail.com>
 <20210505140854.15929-2-macroalpha82@gmail.com>
 <20210510162329.GD751702@dell>
 <20210513150122.GA8450@wintermute.localdomain>
 <20210513201114.GE805368@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210513201114.GE805368@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_085014_519166_85082E19 
X-CRM114-Status: GOOD (  46.54  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBNYXkgMTMsIDIwMjEgYXQgMDk6MTE6MTRQTSArMDEwMCwgTGVlIEpvbmVzIHdyb3Rl
Ogo+IE9uIFRodSwgMTMgTWF5IDIwMjEsIENocmlzIE1vcmdhbiB3cm90ZToKPiAKPiA+IE9uIE1v
biwgTWF5IDEwLCAyMDIxIGF0IDA1OjIzOjI5UE0gKzAxMDAsIExlZSBKb25lcyB3cm90ZToKPiA+
ID4gT24gV2VkLCAwNSBNYXkgMjAyMSwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgo+ID4gPiAKPiA+ID4g
PiBGcm9tOiBDaHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+ID4gPiA+IAo+
ID4gPiA+IEFkZCByazgxNyBjb2RlYyBzdXBwb3J0IGNlbGwgdG8gcms4MDggbWZkIGRyaXZlci4K
PiA+ID4gPiAKPiA+ID4gPiBUZXN0ZWQtYnk6IE1hY2llaiBNYXR1c3pjenlrIDxtYWNjcmFmdDEy
M21jQGdtYWlsLmNvbT4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBNb3JnYW4gPG1hY3Jv
bW9yZ2FuQGhvdG1haWwuY29tPgo+ID4gPiAKPiA+ID4gTml0OiBUaGVzZSBzaG91bGQgYmUgY2hy
b25vbG9naWNhbC4KPiA+IAo+ID4gQWNrbm93bGVkZ2VkLiBJIHdpbGwgbWFrZSBzdXJlIHRvIGRv
IHRoaXMgaWYgYSB2MTAgaXMgbmVjZXNzYXJ5Lgo+ID4gCj4gPiA+IAo+ID4gPiA+IC0tLQo+ID4g
PiA+IENoYW5nZXMgaW4gdjk6Cj4gPiA+ID4gIC0gQWRkIGNvdmVyIGxldHRlci4KPiA+ID4gPiAg
LSBSZW1vdmUgZG9jdW1lbnRhdGlvbiBmb3IgaW50ZXJydXB0IHBhcmVudCBwZXIgUm9iIEhlcnJp
bmcncyByZXF1ZXN0Lgo+ID4gPiA+ICAtIFJlbW92ZSB1bnVzZWQgTU9EVUxFX0RFVklDRV9UQUJM
RSB0byBmaXggYSBidWcgaWRlbnRpZmllZCBieSBrZXJuZWwgdGVzdAo+ID4gPiA+ICAgIHJvYm90
Lgo+ID4gPiA+IENoYW5nZXMgaW4gdjg6Cj4gPiA+ID4gIC0gQWRkZWQgYWRkaXRpb25hbCBkb2N1
bWVudGF0aW9uIGZvciBtaXNzaW5nIHByb3BlcnRpZXMgb2YgI3NvdW5kLWRhaS1jZWxscywKPiA+
ID4gPiAgICBpbnRlcnJ1cHQtcGFyZW50LCBhbmQgd2FrZXVwLXNvdXJjZSBmb3IgbWZkIGRvY3Vt
ZW50YXRpb24uCj4gPiA+ID4gIC0gQ29ycmVjdGVkIG9yZGVyIG9mIGVsZW1lbnRzIGRlc2NyaXB0
aW9ucyBpbiBkZXZpY2UgdHJlZSBkb2N1bWVudGF0aW9uLgo+ID4gPiA+ICAtIENoYW5nZWQgbmFt
ZSBvZiAibWljLWluLWRpZmZlcmVudGlhbCIgdG8gInJvY2tjaGlwLG1pYy1pbi1kaWZmZXJlbnRp
YWwiLgo+ID4gPiA+ICAtIENoYW5nZWQgbmFtZSBvZiBzb3VuZCBjYXJkIGZyb20gInJvY2tjaGlw
LHJrODE3LWNvZGVjIiB0byAiQW5hbG9nIi4KPiA+ID4gPiAgLSBSZW1vdmVkIHVudXNlZCByZXNl
dHMgYW5kIHJlc2V0LW5hbWVzIGZyb20gdGhlIGkyczFfMmNoIG5vZGUuCj4gPiA+ID4gQ2hhbmdl
cyBpbiB2NzoKPiA+ID4gPiAgLSBSZW1vdmVkIGlmZGVmIGFyb3VuZCByZWdpc3RlciBkZWZpbml0
aW9ucyBmb3IgTUZELgo+ID4gPiA+ICAtIFJlcGxhY2VkIGNvZGVjIGRvY3VtZW50YXRpb24gd2l0
aCB1cGRhdGVzIHRvIE1GRCBkb2N1bWVudGF0aW9uLgo+ID4gPiA+ICAtIFJlb3JkZXJlZCBlbGVt
ZW50cyBpbiBleGFtcGxlIHRvIGNvbXBseSB3aXRoIHVwc3RyZWFtIHJ1bGVzLgo+ID4gPiA+ICAt
IEFkZGVkIGJpbmRpbmcgdXBkYXRlIGJhY2sgZm9yIE9kcm9pZCBHbyBBZHZhbmNlIGFzIHJlcXVl
c3RlZC4KPiA+ID4gPiAgLSBTdWJtaXR0aW5nIHBhdGNoZXMgZnJvbSBnbWFpbCBub3cuCj4gPiA+
ID4gQ2hhbmdlcyBpbiB2NjoKPiA+ID4gPiAgLSBJbmNsdWRlZCBhZGRpdGlvbmFsIHByb2plY3Qg
bWFpbnRhaW5lcnMgZm9yIGNvcnJlY3Qgc3Vic3lzdGVtcy4KPiA+ID4gPiAgLSBSZW1vdmVkIHVu
bmVlZGVkIGNvbXBhdGlibGUgZnJvbSBEVCBkb2N1bWVudGF0aW9uLgo+ID4gPiA+ICAtIFJlbW92
ZWQgYmluZGluZyB1cGRhdGUgZm9yIE9kcm9pZCBHbyBBZHZhbmNlICh3aWxsIGRvIGluIHNlcGVy
YXRlIHNlcmllcykuCj4gPiA+ID4gQ2hhbmdlcyBpbiB2NToKPiA+ID4gPiAgLSBNb3ZlIHJlZ2lz
dGVyIGRlZmluaXRpb25zIGZyb20gcms4MTdfY29kZWMuaCB0byBtYWluIHJrODA4LmggcmVnaXN0
ZXIKPiA+ID4gPiAgICBkZWZpbml0aW9ucy4KPiA+ID4gPiAgLSBBZGQgdm9sYXRpbGUgcmVnaXN0
ZXIgZm9yIGNvZGVjIGJpdHMuCj4gPiA+ID4gIC0gQWRkIGRlZmF1bHQgdmFsdWVzIGZvciBjb2Rl
YyBiaXRzLgo+ID4gPiA+ICAtIFJlbW92ZWQgb2ZfY29tcGF0aWJsZSBmcm9tIG10ZCBkcml2ZXIg
KG5vdCBuZWNlc3NhcnkpLgo+ID4gPiA+ICAtIFN3aXRjaGVkIHRvIHVzaW5nIHBhcmVudCByZWdt
YXAgaW5zdGVhZCBvZiBwcml2YXRlIHJlZ21hcCBmb3IgY29kZWMuCj4gPiA+ID4gQ2hhbmdlcyBp
biB2NDoKPiA+ID4gPiAgLSBDcmVhdGVkIHNldF9wbGwoKSBjYWxsLgo+ID4gPiA+ICAtIENyZWF0
ZWQgdXNlciB2aXNpYmxlIGdhaW4gY29udHJvbCBpbiBtaWMuCj4gPiA+ID4gIC0gQ2hlY2sgZm9y
IHJldHVybiB2YWx1ZSBvZiBjbGtfcHJlcGFyZV9lbmFibGUoKS4KPiA+ID4gPiAgLSBSZW1vdmVk
IGR1cGxpY2F0ZSBjbGtfcHJlcGFyZV9lbmFibGUoKS4KPiA+ID4gPiAgLSBTcGxpdCBEVCBkb2N1
bWVudGF0aW9uIHRvIHNlcGFyYXRlIGNvbW1pdC4KPiA+ID4gPiBDaGFuZ2VzIGluIHYzOgo+ID4g
PiA+ICAtIFVzZSBEQVBNIG1hY3JvcyB0byBzZXQgYXVkaW8gcGF0aC4KPiA+ID4gPiAgLSBVcGRh
dGVkIGRldmljZXRyZWUgYmluZGluZyAoYXMgZXZlcnkgcms4MTcgaGFzIHRoaXMgY29kZWMgY2hp
cCkuCj4gPiA+ID4gIC0gQ2hhbmdlZCBkb2N1bWVudGF0aW9uIHRvIHlhbWwgZm9ybWF0Lgo+ID4g
PiA+ICAtIFNwbGl0IE1GRCBjaGFuZ2VzIHRvIHNlcGFyYXRlIGNvbW1pdC4KPiA+ID4gPiBDaGFu
Z2VzIGluIHYyOgo+ID4gPiA+ICAtIEZpeGVkIGF1ZGlvIHBhdGggcmVnaXN0ZXJzIHRvIHNvbHZl
IHNvbWUgYnVncy4KPiA+ID4gPiAKPiA+ID4gPiAgZHJpdmVycy9tZmQvcms4MDguYyAgICAgICB8
IDg1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiA+ICBpbmNs
dWRlL2xpbnV4L21mZC9yazgwOC5oIHwgODEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ID4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDE2NiBpbnNlcnRpb25zKCspCj4gPiA+
ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL3JrODA4LmMgYi9kcml2ZXJzL21m
ZC9yazgwOC5jCj4gPiA+ID4gaW5kZXggYWQ5MjNkZDRlMDA3Li45MjMxMjA5MTg0ZTAgMTAwNjQ0
Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9tZmQvcms4MDguYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMv
bWZkL3JrODA4LmMKPiA+ID4gPiBAQCAtNjUsNiArNjUsNyBAQCBzdGF0aWMgYm9vbCByazgxN19p
c192b2xhdGlsZV9yZWcoc3RydWN0IGRldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgcmVnKQo+ID4g
PiA+ICAJc3dpdGNoIChyZWcpIHsKPiA+ID4gPiAgCWNhc2UgUks4MTdfU0VDT05EU19SRUcgLi4u
IFJLODE3X1dFRUtTX1JFRzoKPiA+ID4gPiAgCWNhc2UgUks4MTdfUlRDX1NUQVRVU19SRUc6Cj4g
PiA+ID4gKwljYXNlIFJLODE3X0NPREVDX0RUT1BfTFBUX1NSU1Q6Cj4gPiA+ID4gIAljYXNlIFJL
ODE3X0lOVF9TVFNfUkVHMDoKPiA+ID4gPiAgCWNhc2UgUks4MTdfSU5UX1NUU19SRUcxOgo+ID4g
PiA+ICAJY2FzZSBSSzgxN19JTlRfU1RTX1JFRzI6Cj4gPiA+ID4gQEAgLTE2Myw2ICsxNjQsMTEg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBtZmRfY2VsbCByazgxN3NbXSA9IHsKPiA+ID4gPiAgCQku
bnVtX3Jlc291cmNlcyA9IEFSUkFZX1NJWkUocms4MTdfcnRjX3Jlc291cmNlcyksCj4gPiA+ID4g
IAkJLnJlc291cmNlcyA9ICZyazgxN19ydGNfcmVzb3VyY2VzWzBdLAo+ID4gPiA+ICAJfSwKPiA+
ID4gPiArI2lmZGVmIENPTkZJR19TTkRfU09DX1JLODE3Cj4gPiA+ID4gKwl7Cj4gPiA+ID4gKwkJ
Lm5hbWUgPSAicms4MTctY29kZWMiLAo+ID4gPiA+ICsJfSwKPiA+ID4gPiArI2VuZGlmCj4gPiA+
IAo+ID4gPiBObyAjaWZlcnkgcGxlYXNlLgo+ID4gPiAKPiA+ID4gSnVzdCByZXBsYWNlIGl0IHdp
dGggYSBjb21tZW50Lgo+ID4gPiAKPiA+ID4gSWYgbm8gYXNzb2NpYXRlZCBkcml2ZXIgZXhpc3Rz
LCBpdCBqdXN0IHdvbid0IG1hdGNoL2JpbmQuCj4gPiAKPiA+IEkgZGlkIHRoZSAiaWYiIGhlcmUg
YmVjYXVzZSBJIG5vdGljZWQgdGhhdCBpZiBJIGhhdmUgYSByazgxNyBhbmQgZG8gbm90Cj4gPiB1
dGlsaXplIHRoZSBjb2RlYyBJIHJlY2VpdmUgYSBkbWVzZyB3YXJuaW5nLiBJIHB1dCB0aGUgaWYg
aGVyZSB0byBzaWxlbmNlCj4gPiBpdCBpbiB0aGUgZXZlbnQgdGhhdCBzb21lb25lIHdhcyB1c2lu
ZyB0aGlzIFBNSUMgYnV0IGRpZG4ndCB3YW50IHRvIHVzZQo+ID4gdGhlIGF1ZGlvIGNvZGVjLiBJ
IHdpbGwgbWFrZSB0aGUgY2hhbmdlIGlmIHlvdSBzYXkgc28gdGhvdWdoLCBidXQgSSBqdXN0Cj4g
PiB3YW50IHRvIGNvbmZpcm0gdGhhdCBpdCdzIGFjY2VwdGFibGUgdG8gaGF2ZSBhIHdhcm5pbmcg
Zm9yIGFsbCByazgxN3MKPiA+IHRoYXQgZG8gbm90IHVzZSB0aGUgY29kZWMgYWJvdXQgYSBtaXNz
aW5nIGNvZGVjLiAgVGhlIGhhcmR3YXJlIGlzIGFsd2F5cwo+ID4gcHJlc2VudCwgSSBqdXN0IGNh
bid0IHNheSBmb3IgY2VydGFpbiBpdCB3aWxsIGFsd2F5cyBiZSB1c2VkLgo+IAo+IFdoYXQgaXMg
dGhlIGRtZXNnIHdhcm5pbmcgeW91IHJlY2VpdmU/CgpJdCBhcHBlYXJzIEkgd2FzIGNvbmZ1c2Vk
LCBJIHdpbGwgdXBkYXRlIHRoZSBjb2RlLiBObyB3YXJuaW5nIGlzCnJlY2VpdmVkIHdoZW4gSSB0
YWtlIGF3YXkgdGhlIGlmZGVmIGd1YXJkLiBIb3dldmVyLCBpZiBJIGJ1aWxkIHRoZQpjb2RlYyBh
bmQgZG9uJ3QgaW5jbHVkZSBhIGRldmljZXRyZWUgbm9kZSBmb3IgaXQgSSBnZXQgdGhlIGZvbGxv
d2luZwpsaW5lcyBpbiBkbWVzZzoKCnJrODE3LWNvZGVjIHJrODE3LWNvZGVjOiByazgxN19jb2Rl
Y19wYXJzZV9kdF9wcm9wZXJ0eSgpIENhbiBub3QgZ2V0IGNoaWxkOiBjb2RlYwpyazgxNy1jb2Rl
YyByazgxNy1jb2RlYzogcms4MTdfcGxhdGZvcm1fcHJvYmUoKSBwYXJzZSBkZXZpY2UgdHJlZSBw
cm9wZXJ0eSBlcnJvciAtMTkKClNvIGl0IGxvb2tzIGxpa2UgdGhpcyBpZmRlZiB3YXMgbWVhbnQg
dG8gImZpeCIgYSBwcm9ibGVtIHRoYXQgaXQKZG9lc24ndCBldmVuIGZpeC4gSSdsbCBnZXQgcmlk
IG9mIGl0IGFuZCByZXN1Ym1pdC4gVG8gdGhhdCBlbmQsIGRvIHlvdQp0aGluayB0aGVzZSBtZXNz
YWdlcyBhYm92ZSBhcmUgb2theSwgb3Igc2hvdWxkIHdlIHRyeSB0byBmaXggdGhlbSBpbgp0aGUg
ZWRnZSBjYXNlIG9mIGEgdXNlciB3aXRoIGFuIHJrODE3IHdobyBkb2Vzbid0IHVzZSB0aGUgY29k
ZWMgYnV0CnN0aWxsIGhhcyB0aGUgY29kZWMgZHJpdmVyIGNvbXBpbGVkPwoKVGhhbmsgeW91LgoK
PiAKPiAtLSAKPiBMZWUgSm9uZXMgW+adjueQvOaWr10KPiBTZW5pb3IgVGVjaG5pY2FsIExlYWQg
LSBEZXZlbG9wZXIgU2VydmljZXMKPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQXJtIFNvQ3MKPiBGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
