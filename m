Return-Path: <SRS0=8xFb=ES=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01AFCC55ABD
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 10:33:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7C8B122210
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 10:33:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qS0hr+Dk";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yz8BpGmy"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7C8B122210
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4m8ZtutI7FOIEBEhOBYOYy7GcPkEZk/2R0VVGg5/TDc=; b=qS0hr+DkYHQlZdUsTT3jj/KovO
	GrDwJUwR4A9SnJwm1DpbODS14Mwy1DvJj5cHJ/V/sgf9lx19vfOCfJ+tOG9/FIsfsCbRt1sXbXSxl
	QIFB+NFWge50P3hrK9GQggdaPJZd1yajRTuPFJIUhLLuukS70w2rnmOwniSn5L42zcuodS9L6uMEB
	C46w97WqNTlmJdM+HT18jpOz+vHRzVRPR9gjomg9lSzUyMWuw6BiWU/SoTRNCy7jVzvrDi8C0AMpx
	7Svlm1XrgfmwNZI02TEc0/YYN15brGERdXMXq1JtwAUc4vBa81HSjcbGUzL7RQvWnViX9jOJwYJy0
	jouTPQ4Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kd9vL-0003cS-Hu; Thu, 12 Nov 2020 10:33:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kd9vI-0003b0-37
 for linux-rockchip@lists.infradead.org; Thu, 12 Nov 2020 10:33:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id c17so5390477wrc.11
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2020 02:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=35zt7gixVPMG1KfL9nSOfZvseh8gr5Ny6Pqy+A2ZElg=;
 b=yz8BpGmykQJd3aJMjbiY1HRFds0VHjDm5pgAfA4tz1+MZSuebUW/P09W/VnvxdzTAx
 0s75bsDt4SbiH2guN00CswOs8QHgnlS5+ZpgKc9elSBoXxmSqNU3T6l3PJlnX9V0HZ8w
 SesBttkfCe3ZYkkWmGI9fa1nGWgY1/WGv8FJIHoQvhpdxFQxhEsp9pPA9UhLsorm3Dvu
 v0MA7j0XjgezGfcNiVjubw0NwIzRT64Mp570UTv09wmXgfcXag1HZF0vVNvwbc23KOKD
 wTdufj5qUMzn4qD2AveKJPVIjAC9yxS82Xt7ejC0yjjzYbkGhBEQz1w60dz0Tg/ew+tY
 4iFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=35zt7gixVPMG1KfL9nSOfZvseh8gr5Ny6Pqy+A2ZElg=;
 b=uipeYcLb37elAR0K1X5oP8hfQDb3hENVdoiY0mw+hHJRyxmlKQ56FJ+I5LtEbzrz5X
 8S4lpXy6RDVpTBcrfxq+2Bus1odWtLMaDCI31WS7zZY6cdYyR8IEDLCZ6oKb2ccaknVc
 BGFITTs6cTC2Hogvk9eX+P1lvpvng9VRO5p8Tn/Lf8xwLpeZZjmf2Wn1QbFQBAnWYUoQ
 7kJJ8E3lU+XnLMHE098GtjPnHAnE2kTZ52RdS3Vmp8TC768QHwdrvxtfqC3jF/XRSDAb
 KaXTzO255WpKjaB/sbgKkVSdGEwzL1UwQejYxLSUW+2Z7bDesgZh6im1Qivknl3oKald
 mqaA==
X-Gm-Message-State: AOAM530GC/FjT/elzHn1WA3QyGhI0YucdHeMK76C038sVZfLNFT4OZpf
 F18psxAk+jxbLY2urxChCmc4+A==
X-Google-Smtp-Source: ABdhPJwyH5Ff/ayBEd0hcnLHq00JRNlh00wwExj7KnatYlxTXz2oxk36pVc6Y4zME3xdG+UkiIFcEQ==
X-Received: by 2002:adf:f20c:: with SMTP id p12mr7423809wro.27.1605177227114; 
 Thu, 12 Nov 2020 02:33:47 -0800 (PST)
Received: from dell ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id 18sm5717871wmo.3.2020.11.12.02.33.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 02:33:46 -0800 (PST)
Date: Thu, 12 Nov 2020 10:33:44 +0000
From: Lee Jones <lee.jones@linaro.org>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Doug Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 05/25] soc: rockchip: io-domain: Remove incorrect and
 incomplete comment header
Message-ID: <20201112103344.GF1997862@dell>
References: <20201103152838.1290217-1-lee.jones@linaro.org>
 <20201103152838.1290217-6-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103152838.1290217-6-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201112_053348_211801_495466B2 
X-CRM114-Status: GOOD (  13.61  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCAwMyBOb3YgMjAyMCwgTGVlIEpvbmVzIHdyb3RlOgoKPiBGaXhlcyB0aGUgZm9sbG93
aW5nIFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPiAKPiAgZHJpdmVycy9zb2Mvcm9ja2No
aXAvaW8tZG9tYWluLmM6NTc6IHdhcm5pbmc6IENhbm5vdCB1bmRlcnN0YW5kICAqIEBzdXBwbGll
czogdm9sdGFnZSBzZXR0aW5ncyBtYXRjaGluZyB0aGUgcmVnaXN0ZXIgYml0cy4KPiAKPiBDYzog
SGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiBDYzogTGlhbSBHaXJkd29vZCA8bGdp
cmR3b29kQGdtYWlsLmNvbT4KPiBDYzogTWFyayBCcm93biA8YnJvb25pZUBrZXJuZWwub3JnPgo+
IENjOiAiUmFmYWVsIEouIFd5c29ja2kiIDxyYWZhZWwuai53eXNvY2tpQGludGVsLmNvbT4KPiBD
YzogRG91ZyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+IENjOiBsaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUu
am9uZXNAbGluYXJvLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9zb2Mvcm9ja2NoaXAvaW8tZG9tYWlu
LmMgfCAzIC0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zb2Mvcm9ja2NoaXAvaW8tZG9tYWluLmMgYi9kcml2ZXJzL3NvYy9yb2Nr
Y2hpcC9pby1kb21haW4uYwo+IGluZGV4IGVlY2U5N2Y5N2VmOGYuLmQxM2QyZDQ5NzcyMGIgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9zb2Mvcm9ja2NoaXAvaW8tZG9tYWluLmMKPiArKysgYi9kcml2
ZXJzL3NvYy9yb2NrY2hpcC9pby1kb21haW4uYwo+IEBAIC01Myw5ICs1Myw2IEBACj4gIAo+ICBz
dHJ1Y3Qgcm9ja2NoaXBfaW9kb21haW47Cj4gIAo+IC0vKioKPiAtICogQHN1cHBsaWVzOiB2b2x0
YWdlIHNldHRpbmdzIG1hdGNoaW5nIHRoZSByZWdpc3RlciBiaXRzLgo+IC0gKi8KPiAgc3RydWN0
IHJvY2tjaGlwX2lvZG9tYWluX3NvY19kYXRhIHsKPiAgCWludCBncmZfb2Zmc2V0Owo+ICAJY29u
c3QgY2hhciAqc3VwcGx5X25hbWVzW01BWF9TVVBQTElFU107CgpBbnkgaWRlYSB3aG8gd2lsbCBw
aWNrIHRoaXMgdXA/CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwg
TGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxv
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
