Return-Path: <SRS0=j9H1=ET=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85605C4742C
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2020 10:01:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C3DF2206CA
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2020 10:01:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Jpeg4h/4";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DhgvozdT"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C3DF2206CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zK5HVHgO4Qxk5VvxLtk5MBtXtu/b6Q9lCo0XdMMByKM=; b=Jpeg4h/4P3J818VCG+pmaCBvU
	PnPoIEzTUHdVZ9t8hzR+5VLL8LWtd+z05MomV97C98l1qdwC6/FzR6IrGp/BgXadQz8DUIlHFdfUd
	kMPjhXuJa7eO2Pz/oEA5mbWwP3stmFAW1L8d52vTEXJfTPOrgsnGhX8/TDzpJ8hnNNfwk2AX48+zJ
	hAQO+44ZNYxC/VIR56sQH4LF9nlKmsUrPOCxyHFH3Lk4hwtrfCq630euX1Atwh261R3nSDdwGM/s6
	LoMF1bJZ7PPm6SzSUbO0nA6HVUbKubB9ozWojaJNoIRnhtWS0zcBd0+A8JFKVfYigkahz9GD9R5F5
	zQ1yt4qrg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdVti-0007Rz-Df; Fri, 13 Nov 2020 10:01:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdVtg-0007RK-GS
 for linux-rockchip@lists.infradead.org; Fri, 13 Nov 2020 10:01:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id c16so7836381wmd.2
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2020 02:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=w58OruVFvZaEir64Cdqc3z6Um6BYdUEMJpA4uLf04rE=;
 b=DhgvozdTuMFbf2Qq/nw/6CMQwter5OmfvHU5SrkR8Zd+FmWEAiosRsxbL1oCrSSdHL
 NurkTyKSchUdEaDOyFzYdO4ac4Ffz1rwLzqPggC1xSDBM5UuZi+AuMBmYaTvJ65kbvVy
 Ceex/4hlFwEE7giOTQaOQZ54fPxsEKMQvOkDr9xWLOv6OzpRnizfvS/xK8zT5MJVe+jD
 lhnY+wGKKEfGBSMdMqT7Ytr5wMh3hihthMnEyg3zXPTl5CHd6vKV0TJ+HibPA0zF9yy2
 OP5qivPSwAQ79GQ1syWd6fcXbofFgkHHEUbZG2RWQCj0BMcGEhB/7eCRALVPJrWHkYVP
 qcTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=w58OruVFvZaEir64Cdqc3z6Um6BYdUEMJpA4uLf04rE=;
 b=CISMm88XS+FGkLh2m9eDum4pRsBt3ph23qPq1XY5rNR018MnyEFMG7XtjKl5xTt+tm
 Zj/EUBB9V7vzW+5veGEqhOdHnx9nMy6BCKpjGIkCGy6wp+inqkmgJaz+vS+NfzV36xMt
 /LUDmDvGZWjf4SpeJ8vQ0buONYCOHuamb0vcvjvGWsX7xuu/z4+z+tPaYy+Fz55E6mIL
 ROUDt1WGOVTL6w9dKFnAd112R88VbZTk1CzMnvGOH9oszYYBfSLJEHJOVdMTz/8mdtmi
 /ysb3QC9K9XyHV2Lvl2hr25hYML80XcdaMY5MHJVaxjgXpFiahXC5pSDlT02lV9NiTV1
 4kfA==
X-Gm-Message-State: AOAM531rwnnKRkSMUA5mex/7UQ2rc/hvVfrfAyiH+hrFzoT5zpp62rl/
 wH2Gq74b1d4TqUgrLYh7+QUjqA==
X-Google-Smtp-Source: ABdhPJzo16ZjEH7/M3EW3rY6dkx98RWlSc6fx09X9y+orOylikrKX+LjaU2uwv15YxH0B+m9zJwB7g==
X-Received: by 2002:a1c:97:: with SMTP id 145mr1659512wma.72.1605261695451;
 Fri, 13 Nov 2020 02:01:35 -0800 (PST)
Received: from dell ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id p3sm4150911wrs.50.2020.11.13.02.01.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Nov 2020 02:01:34 -0800 (PST)
Date: Fri, 13 Nov 2020 10:01:33 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 1/5] dt-binding: mfd: syscon: add Rockchip QoS
 register compatibles
Message-ID: <20201113100133.GB3718728@dell>
References: <20201107170103.25608-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201107170103.25608-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201113_050136_602504_43043148 
X-CRM114-Status: GOOD (  11.19  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU2F0LCAwNyBOb3YgMjAyMCwgSm9oYW4gSm9ua2VyIHdyb3RlOgoKPiBXaXRoIHRoZSBjb252
ZXJzaW9uIG9mIHN5c2Nvbi55YW1sIG1pbkl0ZW1zIGZvciBjb21wYXRpYmxlcwo+IHdhcyBzZXQg
dG8gMi4gQ3VycmVudCBSb2NrY2hpcCBkdHNpIGZpbGVzIG9ubHkgdXNlICJzeXNjb24iIGZvcgo+
IFFvUyByZWdpc3RlcnMuIEFkZCBSb2NrY2hpcCBRb1MgY29tcGF0aWJsZXMgdG8gcmVkdWNlIG5v
dGlmaWNhdGlvbnMKPiBwcm9kdWNlZCB3aXRoOgo+IAo+IG1ha2UgQVJDSD1hcm0gZHRic19jaGVj
awo+IERUX1NDSEVNQV9GSUxFUz1Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZk
L3N5c2Nvbi55YW1sCj4gCj4gbWFrZSBBUkNIPWFybTY0IGR0YnNfY2hlY2sKPiBEVF9TQ0hFTUFf
RklMRVM9RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNjb24ueWFtbAo+
IAo+IFNpZ25lZC1vZmYtYnk6IEpvaGFuIEpvbmtlciA8amJ4NjI0NEBnbWFpbC5jb20+Cj4gLS0t
Cj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlhbWwgfCA0
ICsrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKQXBwbGllZCwgdGhhbmtz
LgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZl
bG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFy
bSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
