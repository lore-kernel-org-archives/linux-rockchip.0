Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC367E77182
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 14:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGY3E/iRBKA6upkRJDkmngSpFEnIcs/+clu1aC7TtFw=; b=uORdtcrbDw3yvr
	rGdn1cOAGihcnOO647y/B4qBslra1UvjpW9TDDCCyxdJk4h7ytUynUXcfoOtNBgC8cxygl5QjGPI1
	hdFnMoqs/1gLc/s+v3us2YBW4v5dvv3QK0jiBkyMbgmqn4uqsctLcUNXXe6di46CDXAAmqrVbJ0vb
	iCous2lJUNQTelLV6yigM3Icleju74ir8AU/At9//RryFARsiapOGX5XoJ70dQE/0IgV4YLV0EdT7
	143vo5AceuafI9x03Hf2/I1qJHUo1bZFTlQ67/HJLbhsmsAmgpMBueC2ovGS/OdDi/kTYUtxpfbqw
	uAdNwenUuhv5C9sukP8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLkLw-00000000diF-0uwX;
	Thu, 12 Dec 2024 14:39:44 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLkLu-00000000dhK-0T3y
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Dec 2024 14:39:43 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-4678664e22fso6119181cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Dec 2024 06:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1734014381; x=1734619181; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LIeJWDB2e3v6s0K160v2H6XjXslzfSsSGvjLFvy0AhQ=;
        b=v10b28BUFMBIiStpNvfgamXBJWHBY32w70BMuuJvEVOoPmydztMTBQyAOmC6sNUr9t
         4Q2EjRMAWcafX0TCGlkDeU/bwR2pcezU71VQKVK/7yQyE4nWpoC5lkh6NaWfztwkPFpk
         MzhyWxgiXsPpUTcDJs/4i6T8PEiQH9msyL21zPRRVYflVL9ZG3UCMzCNnwnw+2S2iEiH
         6bfGryC9TRf8iCXytmj7SuvRhn2/SAAbKgQe98h3IoAla+vWlELRmi2CtqeKiJ8wVqZz
         dsNc/FeNX65Vy0ObHYG2uCvrTtGQ3l5Eh7TFLjfAfHMLkZ0NXQpUXOUdbwJsCpYGB82l
         mZ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734014381; x=1734619181;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LIeJWDB2e3v6s0K160v2H6XjXslzfSsSGvjLFvy0AhQ=;
        b=Mv/PqBEUGTyVg/kzPjBW21Xk40Mkite2Mg6fqxhG5vrakjAK2eYsn//cJEOlH19Wzw
         f60mdfpq74X28H8bLsfgkWLRL19sdYCLRIl1jz0c0BQRIBpvog0X8wJLT+siThVJNMOv
         zKejDsPrznUGWCHN+bmG0b4ggMw+Q2+10St/F61aHaMSkJMaEwwDtRos0qakjf9CvCf/
         z4tkT0rYf/V2/uwZWreFMZEExZznXBcXVNNPibE0cBRdOPp+O4ovZyXHyxksCyM78Obd
         gOlw5Siy8eVeQTKjyzItiDTUttOlyEdaUxQ0YiLKdO+0ucSvq1476900iKtvHZMLAPmx
         g7XA==
X-Forwarded-Encrypted: i=1; AJvYcCUbYV/Oeir7Hw1+868s7J69xBizFrpA0Z66a7vF36dIzxEQRyEBoMO9D763wZI/VVn7rNnCRoMHPUYhDVdGKA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzJ6+C50ZjnltsWzTvgAt/3cLIeiPs4D3xZP00V0VN/NqtqAEu9
	nV0Ce7pDQhlVaJvc8PhCG2rM5IHi9UHalgslODCym9gjclmo0/HYlFivAozP8gk=
X-Gm-Gg: ASbGncvFAUnqkWfv7Ta+qXNJhtLWYLTzBZ3B5BfiFihq7/bUd7xZ77Eew4YZUmyaGGb
	xmVwCablSdiMiYvrUGxfTsX0uJeoajoEHO72FuoJIQKhfP81xVHIjE6K+nvlxRE/pP85QbFwZFC
	985oDXg0gcVQuFtSGgGKIhivZ3kZn9FQDlJuPjeXKHPEr57C2WGNf5XoXK9hsUHgW0tr56Ndtzc
	lj5CNjlokl6VZEfUt8DbFR+PVUh1NeSEXOaKySXWwygo6rzVlXe6GCvnQ==
X-Google-Smtp-Source: AGHT+IGe6BR/nJYecL4uvVJeolPMjPs95fnRbDMbA7nYERaQwE6R6C8dpsFTy9fb3t3Pc0QRB2bHtA==
X-Received: by 2002:ac8:5f83:0:b0:467:59a3:b44a with SMTP id d75a77b69052e-467a170e8a3mr8393441cf.56.1734014380603;
        Thu, 12 Dec 2024 06:39:40 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:862e::7a9])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-467a115b939sm1298231cf.44.2024.12.12.06.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 06:39:40 -0800 (PST)
Message-ID: <6d322d25bef972851b323e795ef35bb8a8ef556d.camel@ndufresne.ca>
Subject: Re: [PATCH 2/2] media: verisilicon: Fix IMX8 native pixels format
 steps values
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Thu, 12 Dec 2024 09:39:39 -0500
In-Reply-To: <01020192f83fdef5-358ea072-9630-473f-9407-53be13d85864-000000@eu-west-1.amazonses.com>
References: <20241104173623.1058335-1-benjamin.gaignard@collabora.com>
	 <01020192f83fdef5-358ea072-9630-473f-9407-53be13d85864-000000@eu-west-1.amazonses.com>
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_063942_146236_D0D18559 
X-CRM114-Status: GOOD (  12.52  )
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

TGUgbHVuZGkgMDQgbm92ZW1icmUgMjAyNCDDoCAxNzozNiArMDAwMCwgQmVuamFtaW4gR2FpZ25h
cmQgYSDDqWNyaXTCoDoKPiBIYW50cm8gZGVjb2RlciBub24gcG9zdC1wcm9jZXNzZWQgcGl4ZWxz
IGZvcm1hdHMgc3RlcHMgYXJlIGRpZmZlcmVudAo+IGZyb20gcG9zdC1wcm9jZXNzZWQgb25lcy4K
PiBGaXggdGhlIHN0ZXBzIGFjY29yZGluZyB0byBoYXJkd2FyZSBsaW1pdGF0aW9uLgo+IFNpbmNl
IHJlZmVyZW5jZSBmcmFtZSBwaXhlbHMgZm9ybWF0IGlzc3VlIGhhcyBiZWVuIGZpeCwgaXQgaXMg
cG9zc2libGUKPiB0byB1c2UgVjRMMl9QSVhfRk1UX05WMTVfNEw0IHJhdGhlciBWNEwyX1BJWF9G
TVRfUDAxMF80TDQgZm9yIDEwYml0cwo+IHN0cmVhbXMuCj4gCj4gRmx1c3RlciBWUDkgc2NvcmUg
Z29lcyB1cCB0byAyMDcvMzA1Lgo+IEhFVkMgc2NvcmUgaXMgc3RpbGwgMTQxLzE0Ny4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFi
b3JhLmNvbT4KClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25l
QGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2lteDhtX3ZwdV9ody5jIHwgMTAgKysrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2lteDhtX3ZwdV9ody5jIGIvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9pbXg4bV92cHVfaHcuYwo+IGluZGV4IGY4NTBkOGJkZGVmNi4u
MzU3OTlkYTUzNGVkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vaW14OG1fdnB1X2h3LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2lteDhtX3ZwdV9ody5jCj4gQEAgLTE4NywyMyArMTg3LDIzIEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgaGFudHJvX2ZtdCBpbXg4bV92cHVfZzJfZGVjX2ZtdHNbXSA9IHsKPiAgCQkuZnJt
c2l6ZSA9IHsKPiAgCQkJLm1pbl93aWR0aCA9IEZNVF9NSU5fV0lEVEgsCj4gIAkJCS5tYXhfd2lk
dGggPSBGTVRfVUhEX1dJRFRILAo+IC0JCQkuc3RlcF93aWR0aCA9IFRJTEVfTUJfRElNLAo+ICsJ
CQkuc3RlcF93aWR0aCA9IDgsCj4gIAkJCS5taW5faGVpZ2h0ID0gRk1UX01JTl9IRUlHSFQsCj4g
IAkJCS5tYXhfaGVpZ2h0ID0gRk1UX1VIRF9IRUlHSFQsCj4gLQkJCS5zdGVwX2hlaWdodCA9IFRJ
TEVfTUJfRElNLAo+ICsJCQkuc3RlcF9oZWlnaHQgPSAzMiwKPiAgCQl9LAo+ICAJfSwKPiAgCXsK
PiAtCQkuZm91cmNjID0gVjRMMl9QSVhfRk1UX1AwMTBfNEw0LAo+ICsJCS5mb3VyY2MgPSBWNEwy
X1BJWF9GTVRfTlYxNV80TDQsCj4gIAkJLmNvZGVjX21vZGUgPSBIQU5UUk9fTU9ERV9OT05FLAo+
ICAJCS5tYXRjaF9kZXB0aCA9IHRydWUsCj4gIAkJLmZybXNpemUgPSB7Cj4gIAkJCS5taW5fd2lk
dGggPSBGTVRfTUlOX1dJRFRILAo+ICAJCQkubWF4X3dpZHRoID0gRk1UX1VIRF9XSURUSCwKPiAt
CQkJLnN0ZXBfd2lkdGggPSBUSUxFX01CX0RJTSwKPiArCQkJLnN0ZXBfd2lkdGggPSA4LAo+ICAJ
CQkubWluX2hlaWdodCA9IEZNVF9NSU5fSEVJR0hULAo+ICAJCQkubWF4X2hlaWdodCA9IEZNVF9V
SERfSEVJR0hULAo+IC0JCQkuc3RlcF9oZWlnaHQgPSBUSUxFX01CX0RJTSwKPiArCQkJLnN0ZXBf
aGVpZ2h0ID0gMzIsCj4gIAkJfSwKPiAgCX0sCj4gIAl7CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
