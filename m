Return-Path: <SRS0=F5E9=K4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D2E6C47083
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 07:52:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F397660720
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 07:52:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F397660720
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2ABzFDT03BN1ywn17s/9yQ82bYtJ6fgUZ+P7NGnqLM=; b=gOly7hGreDQ5DB
	q1JVBqpEChJZ4x9NC7jNSWQY854kRQ+UHaW2IWMLQbGHkf+XDs3NJLXICWXilFNso5iJl99LhiBue
	ApXn3TgJYpH9agXq/4k9X2oDXlhgCJdy0POrA7RMmwrnGArdf/zVP1NNxGK1qJwvMp3lBijDhr7Ij
	DuOOTSljIk4A43TRtCpDvlbTPaj+hUoyzWn4oc6E0Roat3sjekVM76CRBhHVR1HiOp3h/ih/suQJB
	KCBv9TTn8iY//4RxIGJcXVNvHNeoZ0r+i7+97dKI7t+KQQ1/zi6TdlJewOTQ9S+W+6UC/KlbG8Wa+
	ubcUmSKKPkNxZ1H/55Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loLgG-002QJk-Nj; Wed, 02 Jun 2021 07:52:48 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loKtU-0029hi-UB
 for linux-rockchip@lists.infradead.org; Wed, 02 Jun 2021 07:02:26 +0000
Received: by mail-wm1-x336.google.com with SMTP id m18so559036wmq.0
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Jun 2021 00:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=I2YDeFUanCg/pgan1aYlo4dp/IlnP/elTacPpIAPqQM=;
 b=TyBmDWxYKFC3qvRZJgxpGRuxNoysigaH/RAM3D4jQP4qy5Yinnsyf9O+voLa7FfE4S
 aX7dy8rHDITQf+/rGlqoQ8jpVuuIpAPPTV73619jOkWAAjDDK4SSob4HYiVHNl0k1wly
 if7UXApaH1EmzSAgw6srLLFeenzO9i2BHPKHxblfNAbRiBX/dSf2yEqpcAiThbmEtnme
 EN27zSQKC/PGa0TVAk2GlmZPhMmGbc30kOWDNd/QSPOegvb8T9PBxZODH4/GjVtFwet2
 oUdP5NVcmU2GfS46gPmEMJh/yZhiHJ4BJD3U473r037WwQhkNKPfrwo8wD31eLg2aFv4
 pE5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=I2YDeFUanCg/pgan1aYlo4dp/IlnP/elTacPpIAPqQM=;
 b=XfMsscUlnkU027zkKWyFsDG1VRVxdc9cl8n/56hLz2Qc4U02Smhq5cGNoxTkUuxEJA
 mxRUUnZ3Yj3/PplgX5Pjj5z735mvRKd8Sxv+RUkcSUgzH9JRtU6kmxEHzZVn7zPbr5l0
 Y2Kt99mlQizb3sDrIe2TaPz8wkXPnhIKYJDCRWxg8hqfTfd3Xm3tz5FpI3O4iVKiUj2j
 eQ3bU+qT9G+TMlgb6HScE463JDY6RHdN03saPzvRzvwvw9I+Puw6s55Q0/J09P+3X0nw
 DWfrFfekyi7vXVtU/BrN2JP2nGiZnlqXxUGoa9cf+6JpyfWgit9cYNsCEPEYNMN9kKxD
 2mRg==
X-Gm-Message-State: AOAM533FlgjtE3moaiZndT2weaGxRygbR3A64MDDmQp2Xg6WE1Dkhu9A
 kfN0jGGZXAd7UpM3tDT6BadkpA==
X-Google-Smtp-Source: ABdhPJxkpzuIkxq/UzbNEPcxikIiBU1LLWTK7nwRLytD5ezE17H6HD6nRf1jPUKLxu53q8oo8x9BsA==
X-Received: by 2002:a05:600c:1913:: with SMTP id
 j19mr3537325wmq.167.1622617343177; 
 Wed, 02 Jun 2021 00:02:23 -0700 (PDT)
Received: from dell ([91.110.221.214])
 by smtp.gmail.com with ESMTPSA id z11sm5482193wrs.7.2021.06.02.00.02.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 00:02:22 -0700 (PDT)
Date: Wed, 2 Jun 2021 08:02:20 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] ASoC: rk817: fix a warning in rk817_probe()
Message-ID: <20210602070220.GC2173308@dell>
References: <20210601214424.23432-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210601214424.23432-1-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_000225_081675_47DEEFD9 
X-CRM114-Status: GOOD (  12.70  )
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

T24gVHVlLCAwMSBKdW4gMjAyMSwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgoKPiBGcm9tOiBDaHJpcyBN
b3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IAo+IFRoZSByZXR1cm4gdmFsdWUgb2Yg
c25kX3NvY19jb21wb25lbnRfd3JpdGUoKSBpcyBzdG9yZWQgYnV0IG5vdAo+IGV2YWx1YXRlZCBh
bmQgdGhpcyByZXN1bHRzIGluIGEgd2FybmluZyB3aGVuIFc9MSBpcyBzZXQuIFN0b3Agc3Rvcmlu
Zwo+IHRoZSByZXR1cm4gdmFsdWUgdG8gYmUgY29uc2lzdGVudCB3aXRoIGFsbCBvdGhlciBjYWxs
cyBvZgo+IHNuZF9zb2NfY29tcG9uZW50X3dyaXRlKCkgYW5kIHRvIHJlbW92ZSB0aGUgd2Fybmlu
Zy4KPiAKPiBGaXhlczogMGQ2YTA0ZGE5YjI1ICgiQVNvQzogQWRkIFJvY2tjaGlwIHJrODE3IGF1
ZGlvIENPREVDIHN1cHBvcnQiKQo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIE1vcmdhbiA8bWFj
cm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gLS0tCj4gIHNvdW5kL3NvYy9jb2RlY3Mvcms4MTdfY29k
ZWMuYyB8IDMgKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlv
bnMoLSkKCkFwcGxpZWQsIHRoYW5rcy4KCk1hcmssIEknbGwgc2VuZCBvdXQgYW5vdGhlciBQUiBz
aG9ydGx5LgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQg
LSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
