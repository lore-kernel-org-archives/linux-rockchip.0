Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02918CAC597
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Sep 2025 22:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j0YxzciHPJWb7YWbx8T97B2tAo6lvUs3wO1hqr3pt0g=; b=qTMCP1yX2vLELA
	M1hlYCfuDkAu1mDGc7Jg+MHxgH4WiJ0yYVmfeQidAd364ocFFML8KfzWIWPeFR2JGSWNkmsPp7jhT
	WpkhSwEQ+Xb4Fly3N05LIHpDarvBzJ9jMh41uOhV/F70k+Wh5e9MUdo88YFgtlivfUZdUuKp02i9/
	ZpioFYdUR/BHNb4MAuLPcUqhwy9ND5Zhguils1xk8VNVJn/leJSGOZVr89ayZSglhEjk6VfqiLE79
	M0PkeU4nXtTtEpTmCT0Vk2RBacV/qAMXId0axOM1GGnD7eBQyUWOrorwG8m4T94gNPZTItr2I1Hmz
	wiTK8MxjsfMoRS1htswQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyI9E-00000005pz5-2tAO;
	Mon, 15 Sep 2025 22:58:12 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyI9B-00000005py8-3yPa
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Sep 2025 22:58:11 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-74595f3852cso3367921a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Sep 2025 15:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1757977088; x=1758581888; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kB/Wi+cRe7K/Xl4jkmaNXOwfB7KCAKUI6vYOHIxWVl4=;
        b=HuwF5/lBvsR2STvcDa6zA4x+lRJpBkgNBLWlQ1BJNvXn0IVelYD7EhiEQJxHRTIsz6
         xBZ49hJAOauvmK9jOJxAhXpy+hhwPwK0kQfH5xqFgTOax6nrInhbJsvJe5suBUXMrOcV
         GNovFXf5ZNhu89iqcEcvPmZshrmxBwT6BFDV3ex5aHXnwNmk5cjjbfEmzZKbq2eTjXe6
         lUO29msazMMoEPerkonBy1pOl9Q/Czarzd4ohfdaAGEXAdYhP4M+yEVRmqfnUV1pacpA
         lZoat2zvsAFos6RGQj5DgW6fwzoy49ZJNMuT3gZxW8L6SFpyCxC2lc92CmVJ4zDtVPB8
         zjbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757977088; x=1758581888;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kB/Wi+cRe7K/Xl4jkmaNXOwfB7KCAKUI6vYOHIxWVl4=;
        b=EG4Vmjz3Ou423kM6IO4NkxPwMMgXMA1m6gzApfYFs88fNOvd3WEmc8mOrD+WAJ+NXx
         vFTPCdONUJX/CwQnViArY7SI55ON6G5VxmCEMa7L4iu16NIc2SyX6wQd8GvKrOVOr5A0
         7dZIvLJsec0bPl2bOZhgMKr9DgzikEZunj2b3+EZkUMfROZ02fBs44HqbWXr6/83KTm+
         MA38+CioHwRFRj4eQgrGV2hv2Zra2y0dY6qA2kDn6N9lgOUuTdR98UNkmhequdY4Az/5
         kWVc7U1vy2Rexyx1+//FyNga3196DvW0mFN0W6N7lNiVOuQDQA50FF9dl0k8wO4p55Jd
         CU7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVetrkU10df+3HF1xXVCU3q2nsML7XkyJFaedbRPfm/fFfaZ4JpvJpcZB+lpAoPOQhUhL7F/Dtymi18irlkZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkAmq3v+4DiFvMVl2fzYEVBadF6k00QK/XL4zGwgB3YQ+K4Rfh
	BImAbOJdJbYkzXS3iLtaOhC6+GAJPeekA3PH5soMCWucqZTmzWruFrg5bDV26Cecd5E=
X-Gm-Gg: ASbGnctnR5j8d/CjRTF5nkWv9E7H2EBVkYWcxytWnrXLBfN2lfTFwXtRfqWTrZmQw5S
	LTrzn3T2fs9qF78YyA+Q2HMdlXoTJjANeyQSxW6tn/8tnfSx5XOx+OtsCjJrn2QPkq8xP81Sih8
	5xAq5rjD/nPGFpYysK9QxUAihivIb/qR10QN0jBujG94EJyjgHKmAB+7xSn62uC1m0nkyxAVi8p
	AIRbnzvJwKhpE0CoXIJ2P1ckbQNXlQ/uMglFr61zAIdazehYIl0ttXA2O+Y8KL5u3QwpdV2acev
	5KkEyyQ5CDer75oU5stc62jeQ5Vp/7IFuuT4T5dSNYuv3BqmgSHaTus11mV3ZRG40mLUYUjOufw
	RxEmMHhM=
X-Google-Smtp-Source: AGHT+IGSUOqb+ed31/428rqH5N5OvGqFxlxhfX8elAayaMc3UDw7hqxF226u18IdPmrznlxbRNVzmA==
X-Received: by 2002:a05:6830:6adf:b0:745:9dc8:8dfd with SMTP id 46e09a7af769-7535638abb1mr9759182a34.35.1757977088588;
        Mon, 15 Sep 2025 15:58:08 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7524986c872sm3180269a34.15.2025.09.15.15.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 15:58:07 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uyI98-00000004Yk1-1O1R;
	Mon, 15 Sep 2025 19:58:06 -0300
Date: Mon, 15 Sep 2025 19:58:06 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: =?utf-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	robin.murphy@arm.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	linux-media@vger.kernel.org, Will Deacon <will@kernel.org>
Subject: Re: [PATCH v9 3/7] iommu: Add verisilicon IOMMU driver
Message-ID: <20250915225806.GM882933@ziepe.ca>
References: <20250911155720.180465-1-benjamin.gaignard@collabora.com>
 <20250911155720.180465-4-benjamin.gaignard@collabora.com>
 <vrngq76nnms3jyl5hnxqnkimjc6kil66o6fdyqn5vm3fpovmja@cfynipjw7ktp>
 <694b9ba15cd67f41a38f4a65a3811f035cf8e99d.camel@collabora.com>
 <rt6nvgazcl6mvyy4iuut3n7irf72t7rex2iwabbkuxp7cdvez5@2nanenqgxjdy>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <rt6nvgazcl6mvyy4iuut3n7irf72t7rex2iwabbkuxp7cdvez5@2nanenqgxjdy>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_155810_054949_0BE788D5 
X-CRM114-Status: GOOD (  14.38  )
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

T24gU2F0LCBTZXAgMTMsIDIwMjUgYXQgMDc6NTg6MDRBTSArMDIwMCwgSsO2cmcgUsO2ZGVsIHdy
b3RlOgo+IFtBZGRpbmcgV2lsbCBiYWNrIHRvIENjXQo+IAo+IE9uIEZyaSwgU2VwIDEyLCAyMDI1
IGF0IDAxOjM3OjExUE0gLTA0MDAsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4gPiBUbyBtZSB0
aGlzIHJlamVjdGlvbiBpc24ndCBhYm91dCBCZW5qYW1pbidzIGRyaXZlciwgYWxsIGlvbW11IHNl
ZW1zIHRvIGxvb2sKPiA+IGFsaWtlLCBzbyBhbnlvbmUgZWxzZSB0aGF0IHdvdWxkIGhhdmUgc2Vu
dCBuZXcgZHJpdmVyIHdvdWxkIGhhdmUgZmFjZSB0aGUgc2FtZQo+ID4gaXNzdWUuCj4gCj4gVGhp
cyBpcyBhYm91dCBpZ25vcmluZyBjb21tZW50cyBmcm9tIG9uZSBvZiB0aGUgSU9NTVUgbWFpbnRh
aW5lcnMuIEkgYW0gbm90Cj4gZ29pbmcgdG8gbWVyZ2UgYSBkcml2ZXIgd2l0aCBvcGVuIGNvbW1l
bnRzL29iamVjdGlvbnNbMV0gZnJvbSBXaWxsIChhbmQgYSBmZXcKPiBvdGhlcnMpLCBzbyByZXNv
bHZlIHRoaXMgd2l0aCBoaW0gYW5kIGdldCBoaXMgQWNrLgoKSSB3b3VsZCBzdHJvbmdseSBvYmpl
Y3QgdG8gdHJ5aW5nIHRvIHNoYXJlIG1hcF9wYWdlcywgdW5tYXBfcGFnZXMsCmlvdmFfdG9fcGh5
cywgZnJlZSBhbmQgb3RoZXIgaW9tbXUgcHQgcmVsYXRlZCBmdW5jdGlvbnMgaW4gc29tZQpsaW1p
dGVkIHdheSBpbnN0ZWFkIG9mIGhlbHBpbmcgb24gdGhlIG11Y2ggbW9yZSBjb21wbGV0ZSBpb21t
dSBwdAp3b3JrLiBXaGljaCBpcyB3aGF0IEkgc2FpZCB0byBXaWxsLCBidXQgZm9yIHNvbWUgcmVh
c29uIGhlIHN1Z2dlc3RlZAppdCBhbnlob3cuCgpTb3JyeSwgYnV0IGl0IGRvZXNuJ3QgbWFrZSBz
ZW5zZSB0byBjb21wbGFpbiBhYm91dCBkdXBsaWNhdGlvbiBpbgpkcml2ZXJzIGFuZCB0aGVuIG5v
dCBoZWxwIGFkdmFuY2Ugb25lIG9mIHRoZSBiaWdnZXN0IHByb2plY3RzIHRvCmFjdHVhbGx5IGNv
bmNyZXRlbHkgYW5kIGNvbXByZWhlbnNpdmVseSBhZGRyZXNzIHRoYXQgZHVwbGljYXRpb24uCgpK
YXNvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
