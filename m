Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 911BAC47422
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 19:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pqhk9IHE+6RJhr3eJrmCCHklwShRzCZlAQvBHPLQ8sA=; b=EehEy42Vv7O3g7
	UDWM2T8R2J5iqc4mKopgYKjgfVmFvUA4OA95JkNYw5JBPInZ0Q5IkfC/MpEYjAhxGSh7ETTpigG+4
	M633bqTnmkObTd7wQEkeOHxon/NZ/iN+jE3BPQT9uy0540WubVxxo7/2XdLanFh3g7zSLjXMFfZRT
	zy/3SC9A1HDviBiW7JrC4NtUI8cAFNRnJaD6ogZX0Nc4meodx46aH9fIWS1mCA/jpuhN5OtY0xySS
	Q4Oqub9Kbj5ffCAPiUt1MvnM4DnADFny49jhTIk6+OluKEU6/x1luuS6WEh5Aq2PtUKO7Mm6I8wcw
	6yF5g99X/NFj6tnQ/qbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQBRv-000TvJ-2q;
	Wed, 17 Jan 2024 19:19:43 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQBRt-000TuM-2N
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jan 2024 19:19:42 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-6815165b28eso27196636d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Jan 2024 11:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1705519179; x=1706123979; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=B8igfqkmgNu6nC8rSZ4I9Kx5OqAuRTkJcQkJ2S6J9qM=;
        b=ebfHPLqJlWC7uVBQuXSdZGF7+G/+dQkg7GnfX39oxudoxcDJIdAttgSuD+h64h+EuR
         C+xNjs0CYkR0HZEdMWnGNwhcv5LA5oLDbeJzA4ldgRiXMw4wfCZl5uxhotRXMpGPXT3Y
         N7TtxaPuRwu8mDIFpSGZlng5qYSXXaM7aNGGKbAFtrFLFF4eqLs52A4FpQSRDwXNw9o1
         dkqT9QsQCrOszTYDw3dB8cI0gxSd5WK4MtlQwLJe8MyOzyoWbML4FWp32PzqgPApLiml
         10HqjJfw7t0IUUNt3wRu3XBM1he9dfzq2TZEJ3s4AJHmhUtm6Ex6Lu5Q+J0cuUlr5tjN
         1YkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705519179; x=1706123979;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B8igfqkmgNu6nC8rSZ4I9Kx5OqAuRTkJcQkJ2S6J9qM=;
        b=dE5/ZPbvGyU6l+iRx8XA+LYUccNBLHuuPAlNOVB4/rpDUUthkT+zAd+71PZ/EWbgxD
         T1PF7vukHKNL+k7vTkUdRuEGpqrqImZw2qfScDih+4Gqr9Xz1JfIPcrr/6D/0Yybva5T
         TfEbi8Y6onLoVIGSr+DJq/BrJls6ZwiEBpgrmwlKGF/96cZRjmIdAsdCE7aKG2ISoZEN
         AMpNrZboEtiQvnMSrVAG+raSOSxMIf2Tz3+A65DfmKTaD7+/ahU9aHxr99UpXI4LWzaO
         WPEJoQKtFS/0oISbCmWS5MEre5cnk/Nxpa11ah05hdViYWw/jHqhx495aH5CcnKnvjq6
         Q/DA==
X-Gm-Message-State: AOJu0YydVRc7ibeFz0bOq2ydQ3qBIllrF3mdUMGBM4a+WoG69cGnQNzI
	Rq/l8SQKsY8+SL/cafJ+HJcg+wEQbTOCtnruLNgG3Y8OLkg=
X-Google-Smtp-Source: AGHT+IGhfm0OGR0fzKuqlYcPSutpL0zNqA9U5/Fp5M9yWDz8/BWuJWqAohFzEHc4JcDJ4fkmalHIYA==
X-Received: by 2002:a05:6214:1245:b0:681:24af:49b7 with SMTP id r5-20020a056214124500b0068124af49b7mr10664006qvv.27.1705519179783;
        Wed, 17 Jan 2024 11:19:39 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:3354::7a9])
        by smtp.gmail.com with ESMTPSA id op23-20020a056214459700b0068189a17598sm94866qvb.72.2024.01.17.11.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 11:19:39 -0800 (PST)
Message-ID: <aee81d9c755c856a572e63778b6883c3f7c09a5e.camel@ndufresne.ca>
Subject: Re: [PATCH] media: verisilicon: fix hantro.h kernel-doc warning
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, Mauro Carvalho Chehab
 <mchehab@kernel.org>
Date: Wed, 17 Jan 2024 14:19:38 -0500
In-Reply-To: <20240111043635.17065-1-rdunlap@infradead.org>
References: <20240111043635.17065-1-rdunlap@infradead.org>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.3 (3.50.3-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_111941_778496_3E99245A 
X-CRM114-Status: GOOD (  10.37  )
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

TGUgbWVyY3JlZGkgMTAgamFudmllciAyMDI0IMOgIDIwOjM2IC0wODAwLCBSYW5keSBEdW5sYXAg
YSDDqWNyaXTCoDoKPiBSZW1vdmUgYW4gZXh0cmFuZW91cyBrZXJuZWwtZG9jIGRlc2NyaXB0aW9u
IGluIGhhbnRyby5oIHRvCj4gZWxpbWluYXRlIGEga2VybmVsLWRvYyB3YXJuaW5nOgo+IAo+IGhh
bnRyby5oOjI3Nzogd2FybmluZzogRXhjZXNzIHN0cnVjdCBtZW1iZXIgJ2pwZWdfZW5jJyBkZXNj
cmlwdGlvbiBpbiAnaGFudHJvX2N0eCcKClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxu
aWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+CgpUaGFua3MhCgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPgo+IENjOiBFemVxdWllbCBH
YXJjaWEgPGV6ZXF1aWVsQHZhbmd1YXJkaWFzdXIuY29tLmFyPgo+IENjOiBQaGlsaXBwIFphYmVs
IDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5v
cmcKPiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBNYXVybyBD
YXJ2YWxobyBDaGVoYWIgPG1jaGVoYWJAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaCB8ICAgIDEgLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL2hhbnRyby5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9o
YW50cm8uaAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
LmgKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyby5oCj4g
QEAgLTIzNyw3ICsyMzcsNiBAQCBzdHJ1Y3QgaGFudHJvX2RldiB7Cj4gICAqIEBjb2RlY19vcHM6
CQlTZXQgb2Ygb3BlcmF0aW9ucyByZWxhdGVkIHRvIGNvZGVjIG1vZGUuCj4gICAqIEBwb3N0cHJv
YzoJCVBvc3QtcHJvY2Vzc2luZyBjb250ZXh0Lgo+ICAgKiBAaDI2NF9kZWM6CQlILjI2NC1kZWNv
ZGluZyBjb250ZXh0Lgo+IC0gKiBAanBlZ19lbmM6CQlKUEVHLWVuY29kaW5nIGNvbnRleHQuCj4g
ICAqIEBtcGVnMl9kZWM6CQlNUEVHLTItZGVjb2RpbmcgY29udGV4dC4KPiAgICogQHZwOF9kZWM6
CQlWUDgtZGVjb2RpbmcgY29udGV4dC4KPiAgICogQGhldmNfZGVjOgkJSEVWQy1kZWNvZGluZyBj
b250ZXh0Lgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
