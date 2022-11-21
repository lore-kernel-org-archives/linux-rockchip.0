Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71CD7C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 19:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXh4Q5IAYQCLusqrcDedKIhjy7U9u6DlWvtlVWWJqyY=; b=Ue6Cu1vsdn8Sr5
	YwJoztTaKOoMorVRONBInxV8HE4p1j7+GC0HUKT//cA7GFKGurAYuAQbtowXd+OBnNmKn6StnRrkg
	PK/rcGQlphmpxs+Mxq4828bsBkcucV6L6dBTXXY+44e8lkk3zS6l79cfs3ySXqHbKs3VQDdSUnpkG
	eB/6JBbNu58NCpGZuK9SlIm0V7MtuoGcEtEfUBVtTvO24j0PLw/9QzMtm2Ml7L2vsA6fRwOLY41Pa
	lOtEuNvPFyfkXv1BL8M1wMc+NG/kPg5DJmkIFsPk/wkhWI51DSeexojHTzucwaowlhJn/9sTqV/B5
	+pPla+4kZYH+eZv8RJPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxCPv-00HEc9-0f; Mon, 21 Nov 2022 19:25:19 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxCPh-00HEWC-LJ
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 19:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669058699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eoLZmv4iwg/w4gE4QH+SCVnULAbBmRBckpkebszPHC0=;
	b=dERSuzHHbziKFzaK/KbeF63yVaxK9CqgaheEBXF+hF+FkmyJoisWdFKWVees03RmPxWfWt
	V5mfPxF/1v8QvqgOmBuHW8gY86kybaD1Aju501NNsknuYNEfyczQbNAvcWKbIdy6hD4IC7
	2WOxSpTZLOi5CGQacZKSoFAxW4eIQyo=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-217-l50xDp-tMLm9hdPqTXkuFA-1; Mon, 21 Nov 2022 14:24:58 -0500
X-MC-Unique: l50xDp-tMLm9hdPqTXkuFA-1
Received: by mail-ed1-f72.google.com with SMTP id q13-20020a056402518d00b00462b0599644so7533576edd.20
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Nov 2022 11:24:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eoLZmv4iwg/w4gE4QH+SCVnULAbBmRBckpkebszPHC0=;
        b=4TyYhNz1j+REzreXXDWWI//943iaQIUa2jXP+eobR+QySEEyTWenOU1UWRsEHFB9V8
         clzqyIfCwqpgvMZJWSTxsRUmKJ5hqN3aT/r/pbbs1a2nmRX0+zsuPJe6a4XEJStRu6E1
         5uibUS3NucIGsT5okJmBgG4DipFs8Kr7ImmqnNcXCqLY3A0tDWFLK7rDdD6YCQDFaJkf
         CxrB4iwFVEqRfV548JOLu/9EHMWfyPlE4GENUmpqMLXbWK++Vl46zKz8OwElhsAJH5VK
         9ceO4r2gRGN/vS+vwl8dLJylPrXRsxtmOubY7FyLCquhusy4BdxGJn8LfwTekcBn6Ofp
         kpfw==
X-Gm-Message-State: ANoB5pnSv2s8fwQTdSUgxzMIXJE64qWPDa9DctZlcnmgGSVFm2iAtiOe
	y/SLuUU8AvYMV1Fwqu5nzAR2+fm5/OYicbvKAiqJj4eP8MKK71on8ahDv7jHj7NtEtsirmHshtR
	IA2JubM4lZ0HcGomlGhFH2BOu0QrdmpkH
X-Received: by 2002:aa7:c6da:0:b0:469:172:1f38 with SMTP id b26-20020aa7c6da000000b0046901721f38mr15457217eds.195.1669058697359;
        Mon, 21 Nov 2022 11:24:57 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4mcm+9l0MN74vmnCzLHArZvfNvXRoa2WAFysBeHkAtV8iX0vlC/zf5jCAN0bfmt/Xb/ffkbA==
X-Received: by 2002:aa7:c6da:0:b0:469:172:1f38 with SMTP id b26-20020aa7c6da000000b0046901721f38mr15457186eds.195.1669058697111;
        Mon, 21 Nov 2022 11:24:57 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81? (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
        by smtp.gmail.com with ESMTPSA id ez1-20020a056402450100b004617e880f52sm5437350edb.29.2022.11.21.11.24.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 11:24:56 -0800 (PST)
Message-ID: <89e0955c-2878-6e3f-a947-e208340a9db3@redhat.com>
Date: Mon, 21 Nov 2022 20:24:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [RFC PATCH 1/7] Input: goodix - fix reset polarity
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Quentin Schulz <foss+kernel@0leil.net>, hadess@hadess.net,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org, heiko@sntech.de, linux-input@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 linux-sunxi@lists.linux.dev, linux-arm-msm@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <20221103-upstream-goodix-reset-v1-0-87b49ae589f1@theobroma-systems.com>
 <20221103-upstream-goodix-reset-v1-1-87b49ae589f1@theobroma-systems.com>
 <1fa371bd-78a6-bb7c-4692-1d8132ec2ab1@redhat.com>
 <Y2P7SsPa04975Rkm@google.com>
 <692fd16e-4183-d58d-802e-2b83563aee4b@redhat.com>
 <267de96a-0129-a97d-9bf6-e1001b422a1a@theobroma-systems.com>
 <16c7f876-102c-60e1-4a81-3378b6c726fb@redhat.com>
 <554ebf0a-2304-6fd0-555a-0ce1b4615bf0@theobroma-systems.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <554ebf0a-2304-6fd0-555a-0ce1b4615bf0@theobroma-systems.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_112505_818190_27D3F84C 
X-CRM114-Status: GOOD (  24.09  )
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

SGksCgpPbiAxMS8yMS8yMiAxNjowNiwgUXVlbnRpbiBTY2h1bHogd3JvdGU6Cj4gSGkgSGFucywK
PiAKPiBTb3JyeSBmb3IgdGhlIGRlbGF5Lgo+IAo+IE9uIDExLzMvMjIgMjA6MjgsIEhhbnMgZGUg
R29lZGUgd3JvdGU6Cj4gWy4uLl0KPj4gT2ssIHNvIEkndmUgYmVlbiB0YWtpbmcgYSBsb29rIGF0
IGhvdyB3ZSBjYW4gaW52ZXJ0IHRoZSAneCcgcGFzc2VkCj4+IHRvIHRoZSBncGlvZF9kaXJlY3Rp
b25fb3V0cHV0KHRzLT5ncGlvZF9yc3QsIHgpIGNhbGxzIGFuZCBub3QgYnJlYWsKPj4gdGhpbmdz
IHdpdGggQUNQSS4KPj4KPj4gVGhlIHJzdCBwaW4gaXMgbG9va2VkIHVwIHRocm91Z2ggYSBhY3Bp
X2dwaW9fbWFwcGluZyB3aGljaAo+PiBjb250YWlucyBhY3BpX2dwaW9fcGFyYW1zIGFzIG9uZSBv
ZiB0aGUgcGVyIHBpbiBwYXJhbWV0ZXJzCj4+IGFuZCB0aGF0IGRvZXMgaGF2ZSBhbiBhY3RpdmVf
bG93IGZsYWcuCj4+Cj4gCj4gSSBqdXN0IHJlYWQgdGhlIGtlcm5lbCBkb2NzIGFib3V0IEdQSU8g
YW5kIEFDUEkgYW5kIEknbSBub3QgZW50aXJlbHkgc3VyZSB0aGlzIGlzIGFsd2F5cyAxMDAlIHNh
ZmUgdG8gZG86Cj4gCj4gaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvZmlybXdhcmUtZ3VpZGUvYWNw
aS9ncGlvLXByb3BlcnRpZXMuaHRtbAo+IAo+IFNwZWNpZmljYWxseToKPiAiIiIKPiBUaGUgR3Bp
b0lvKCkgcmVzb3VyY2UgdW5mb3J0dW5hdGVseSBkb2Vzbid0IGV4cGxpY2l0bHkgcHJvdmlkZSBh
biBpbml0aWFsIHN0YXRlIG9mIHRoZSBvdXRwdXQgcGluIHdoaWNoIGRyaXZlciBzaG91bGQgdXNl
IGR1cmluZyBpdHMgaW5pdGlhbGl6YXRpb24uCj4gCj4gTGludXggdHJpZXMgdG8gdXNlIGNvbW1v
biBzZW5zZSBoZXJlIGFuZCBkZXJpdmVzIHRoZSBzdGF0ZSBmcm9tIHRoZSBiaWFzIGFuZCBwb2xh
cml0eSBzZXR0aW5ncy4gVGhlIHRhYmxlIGJlbG93IHNob3dzIHRoZSBleHBlY3RhdGlvbnM6Cj4g
Cj4gPT09PT09PT09wqAgPT09PT09PT09PT09PcKgID09PT09PT09PT09PT09Cj4gUHVsbCBCaWFz
wqDCoMKgwqAgUG9sYXJpdHnCoMKgwqDCoCBSZXF1ZXN0ZWQuLi4KPiA9PT09PT09PT3CoCA9PT09
PT09PT09PT09wqAgPT09PT09PT09PT09PT0KPiBJbXBsaWNpdMKgwqDCoMKgIHjCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIEFTIElTIChhc3N1bWVkIGZpcm13YXJlIGNvbmZpZ3VyZWQgZm9yIHVzKQo+
IEV4cGxpY2l0wqDCoMKgwqAgeCAobm8gX0RTRCnCoCBhcyBQdWxsIEJpYXMgKFVwID09IEhpZ2gs
IERvd24gPT0gTG93KSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBhc3N1bWluZyBub24tYWN0aXZlIChQb2xhcml0eSA9ICFQdWxsIEJpYXMpCj4g
RG93bsKgwqDCoMKgwqDCoMKgwqAgTG93wqDCoMKgwqDCoMKgwqDCoMKgIGFzIGxvdywgYXNzdW1p
bmcgYWN0aXZlCj4gRG93bsKgwqDCoMKgwqDCoMKgwqAgSGlnaMKgwqDCoMKgwqDCoMKgwqAgYXMg
bG93LCBhc3N1bWluZyBub24tYWN0aXZlCj4gVXDCoMKgwqDCoMKgwqDCoMKgwqDCoCBMb3fCoMKg
wqDCoMKgwqDCoMKgwqAgYXMgaGlnaCwgYXNzdW1pbmcgbm9uLWFjdGl2ZQo+IFVwwqDCoMKgwqDC
oMKgwqDCoMKgwqAgSGlnaMKgwqDCoMKgwqDCoMKgwqAgYXMgaGlnaCwgYXNzdW1pbmcgYWN0aXZl
Cj4gPT09PT09PT09wqAgPT09PT09PT09PT09PcKgID09PT09PT09PT09PT09Cj4gIiIiCj4gCj4g
QnV0IHNpbmNlIHdlIGFjdHVhbGx5IG92ZXJyaWRlIHRoaXMgZHVyaW5nIG91ciBkZXZtX2dwaW9k
X2dldF9vcHRpb25hbCBieSBwYXNzaW5nIGZvcmNpbmcgdGhlIGZsYWcgdG8gYmUgZWl0aGVyIEdQ
SU9EX0lOIG9yIEdQSU9EX0FTSVMsIHdlIHNob3VsZCBiZSBnb29kIGZvciB0aGlzIGRyaXZlciBJ
SVVDPwoKTm90IGVudGlyZWx5IEkganVzdCBjaGVja2VkIGFuZCBmb3Igc29tZSByZWFzb24gdGhl
IEFDUEkgR1BJTwpsb29rdXAgY29kZSB3aWxsIG92ZXJyaWRlIHRoZSBncGlvZF9mbGFncyBwYXNz
ZWQgdG8gZ3Bpb2RfZ2V0KCkKaWYgaXQgY2FuIGRldGVybWluZSBhIHNldCBvZiBmbGFncyBmcm9t
IHRoZSBBQ1BJIEdwaW9JbyBlbnRyeS4KCkZvciBvdXRwdXQgcGlucyBsaWtlIHRoZSByZXNldCBw
aW4sIHRoaXMgcmVxdW9yZXMgYSBwdWxsIGJpYXMKdG8gYmUgc2V0LCB3aGljaCBvZnRlbiBpcyBu
b3QgdGhlIGNhc2UsIHNvIHRoZW4gdGhlIEdQSU9EX0FTSVMKd2hpY2ggd2UgcGFzcyBpbiBpcyB1
c2VkLgoKQnV0IGlmIGEgcHVsbCBiaWFzIGlzIHNwZWNpZmllZCBpbiB0aGUgQUNQSSBHcGlvSW8g
ZW50cnkgZm9yCnRoZSByZXNldCBwaW4gdGhlbiB0aGF0cyBnZXQgdHJhbnNsYXRlZCB0byBHUElP
RF9PVVRfTE9XIG9yCkdQSU9EX09VVF9ISUdIIGFuZCBzZXR0aW5nIGFjcGlfZ3Bpb19wYXJhbXMu
YWN0aXZlX2xvdyBhcwp5b3VyIHBhdGNoIGRvIHdpbGwgZmxpcCB0aG9zZS4KClNvIHRoaXMgbWF5
IGNhdXNlIHVuaW50ZW5kZWQgc2lkZS1lZmZlY3RzLgoKVGhpcyBpcyBzb21ldGhpbmcgd2hpY2gg
d2UgY2FuIGZpeCB0aG91Z2gsIHdlIGNhbiBmb3JjZQp0aGUgQUNQSSBHUElPIGNvZGUgdG8gaG9u
b3IgdGhlIEdQSU9EX0FTSVMgd2UgcGFzcyBpbgpieSBjaGFuZ2luZzoKCnN0YXRpYyBjb25zdCBz
dHJ1Y3QgYWNwaV9ncGlvX3BhcmFtcyBmaXJzdF9ncGlvID0geyAwLCAwLCBmYWxzZSB9OwpzdGF0
aWMgY29uc3Qgc3RydWN0IGFjcGlfZ3Bpb19wYXJhbXMgc2Vjb25kX2dwaW8gPSB7IDEsIDAsIGZh
bHNlIH07Cgp0bzoKCnN0YXRpYyBjb25zdCBzdHJ1Y3QgYWNwaV9ncGlvX3BhcmFtcyBmaXJzdF9n
cGlvID0geyAwLCAwLCBmYWxzZSwgQUNQSV9HUElPX1FVSVJLX05PX0lPX1JFU1RSSUNUSU9OIH07
CnN0YXRpYyBjb25zdCBzdHJ1Y3QgYWNwaV9ncGlvX3BhcmFtcyBzZWNvbmRfZ3BpbyA9IHsgMSwg
MCwgZmFsc2UsIEFDUElfR1BJT19RVUlSS19OT19JT19SRVNUUklDVElPTiB9OwoKV2hpY2ggd2ls
bCBtYWtlIGdwaW9kX2dldCBob25vciB0aGUgR1BJT0RfQVNJUyBmb3IgdGhlIHJlc2V0IHBpbgph
bmQgdGhlIEdQSU9EX0lOIGZvciB0aGUgSVJRIHBpbi4KCkl0IHdvdWxkIGJlIGdvb2QgdG8gZG8g
dGhpcyBhcyBhIHByZXBhcmF0aW9uIHBhdGNoLCBiZWNhdXNlCnRoaXMgd2lsbCBiZSBnb29kIHRv
IGhhdmUgcmVnYXJkbGVzcyBvZiB0aGUgcmVzdCBvZiB5b3VyIHNlcmllcwpiZWNhdXNlIHRoZSBn
cGlvbGliLWFjcGkgYmVoYXZpb3Igd2l0aG91dCB0aGUKQUNQSV9HUElPX1FVSVJLX05PX0lPX1JF
U1RSSUNUSU9OIGZsYWcgbWF5IGFscmVhZHkgY2F1c2UgdGhlCnJlc2V0IEdQSU8gdG8gZ2V0IGl0
cyB2YWx1ZSBjaGFuZ2VkIGF0IHByb2JlIHRpbWUgd2hpY2ggd2UKZG8gbm90IHdhbnQgdG8gaGFw
cGVuIGluIHRoZSBHb29kaXggZHJpdmVyLgoKSWYgeW91IGNhbiBzZW5kIG1lIHN1Y2ggYSBwcmVw
YXJhdGlvbiBwYXRjaCArIGEgbmV3IDEvNwpvbiB0b3AsIHRoZW4gSSBjYW4gZ2l2ZSB0aGlzIGEg
dGVzdCBvbiBhIHg4Ni9BQ1BJIGRldmljZQp3aXRoIGEgZ29vZGl4IHRvdWNoc2NyZWVuLgoKKE1h
eWJlIHNlbmQgdGhlbSBvZmZsaXN0IGlmIHlvdSBkb24ndCB3YW50IHRvIHNlbmQgb3V0IGFub3Ro
ZXIKdmVyc2lvbiB0aGlzIHF1aWNrbHkuCgpSZWdhcmRzLAoKSGFucwoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
