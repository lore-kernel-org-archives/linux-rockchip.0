Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AECC9C48297
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Feb 2024 19:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/ivhX2FiZbpBFohnaj3X3OjvJ7MXVRrlsYtizTcOq4=; b=BnZKCtx2QgIHLK
	y6ZT6QqfDmvP3TcIBV5JRHV3u4lfMvJGGXJuHTlKdsBmjO4taQT93r6LtONZHPQjb/i/UV2zzm9Te
	fiAzug7CqAm3ixPTaApJCFoRTOBLrebL1LhEspqVBVtHAIvp6+/TLoEeS08DtzA9UOh4F9vWF+uxj
	xEERQvNvAU/yW96xVy7iM4ZORZVg/yUMmJamJY0poCCB1t2s/XIRuduEd5Nl15pSCY04t5ZPpW7+7
	MP7RCgWWv9Y8R2laSkbzH+nRnXAL3npY/kmsT0KtzPeYos/oK1yLDlpjIFZcq5/NoCVfpTmKAgEfr
	y4CyItLalLqlgeaP3qxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYW8U-00000000L0D-3bF7;
	Fri, 09 Feb 2024 19:02:06 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYW8R-00000000Kx3-40LN
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Feb 2024 19:02:05 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-42aa4a9d984so5759841cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Feb 2024 11:02:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1707505321; x=1708110121; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r2GAPlcgJGDaQINPFrlt1R7Ny0c1Ad/P9P2yI23KbDE=;
        b=YDD5H8/hNISlBu92smqQJ5PqsCf5gx8E3O+LJ/Q6gaF3AV/+YXMEgxrgt3JALOSG8z
         PrFQSziv0ZfkIjThTe8KfQ2o8zmkAUeYksZq12qH3SG8p8efzRRAXJrRZ86eH1Y7ftjH
         kVU0OcxESTnRoLcLt4o0d4elB44cX24wKFh1Z7+8pRAZGk2X4WtTENPMgoKr87QK5wXc
         SXfo7qukKXuCGW2SbmHDB1SD0tlzbjCnVGFrDljJGGKu2TbdGeBFxo5cAFArj5Izfrtg
         eh+UXxMCk/ZcezJl3ZA4genidNHF5BhNbC8xGNstWXJF064bOrZcBm6ouXXRGfj8hcRc
         8KBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707505321; x=1708110121;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r2GAPlcgJGDaQINPFrlt1R7Ny0c1Ad/P9P2yI23KbDE=;
        b=o/00TY4jfnSe1zB0E9q8dsITXbuPAnHeiWNBg/j473pWdcByAqa+NuBOQ9+QMTdMW5
         jlAKvST54WLfUuqBkpF9MMiUBXGxBkowCbfxlkyr+335KAHvu2wvINAIxHTu6jj7bg4X
         MCrnh7bdJ8EdGt2vrdZmQkcs9Z7PDPevU7LY9UGBL246V67S7Fh3GaxXiEsINyxcuEnN
         PgYTsgszZSkBTbDkwYnRi7zdtkcW4oCHWbS0/KkUdzHi1DErSLnNGZtzr0r31WD9glIt
         vpVPPcLCGqo8GaQLHDMnvpaVlNnzE+k+r6/1pjkRQNh/t7+Xx6BiBETXAAM3uHK9M3/+
         aRwQ==
X-Gm-Message-State: AOJu0YxSbbWnvbfNp4Lk202sk2wOEdda1zxf52hjUxF/YvK8Ay4gzSE9
	oITQaJJ8uEYTjtbHiBIEv7vuFT3oMVUFgFqiA8X+ajNzVoX3ziqxxObma9TXbZ5GkaaGAzYyRec
	kHrHGF+6qsbP59zQkZsTJaAHP0DC+uHgFw5qcbQ==
X-Google-Smtp-Source: AGHT+IH7/mZBjs2EjvojqcpcvFrKDkqXbLzePQwHXjWI3pjuKzeuKKYp6aDXpqli+cr6MKqGXO43wFaJScoTxBnZMCE=
X-Received: by 2002:ac8:5e51:0:b0:42c:5f0e:6411 with SMTP id
 i17-20020ac85e51000000b0042c5f0e6411mr85445qtx.25.1707505320844; Fri, 09 Feb
 2024 11:02:00 -0800 (PST)
MIME-Version: 1.0
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
 <20240207174102.1486130-8-pasha.tatashin@soleen.com> <2718393.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <2718393.mvXUDI8C0e@jernej-laptop>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 9 Feb 2024 14:01:24 -0500
Message-ID: <CA+CK2bBqzd4imzKxGJVUn3SkvDBPk_=CLA1Fm05kz3DqSE2gpA@mail.gmail.com>
Subject: Re: [PATCH v4 07/10] iommu/sun50i: use page allocation function
 provided by iommu-pages.h
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
	asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com, 
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com, 
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
	iommu@lists.linux.dev, jonathanh@nvidia.com, joro@8bytes.org, 
	krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
	mhiramat@kernel.org, m.szyprowski@samsung.com, paulmck@kernel.org, 
	rdunlap@infradead.org, robin.murphy@arm.com, samuel@sholland.org, 
	suravee.suthikulpanit@amd.com, sven@svenpeter.dev, thierry.reding@gmail.com, 
	tj@kernel.org, tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, 
	will@kernel.org, yu-cheng.yu@intel.com, rientjes@google.com, 
	bagasdotme@gmail.com, mkoutny@suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_110204_036416_14628596 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
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

T24gRnJpLCBGZWIgOSwgMjAyNCBhdCA1OjU14oCvQU0gSmVybmVqIMWga3JhYmVjIDxqZXJuZWou
c2tyYWJlY0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRG5lIHNyZWRhLCAwNy4gZmVicnVhciAyMDI0
IG9iIDE4OjQwOjU5IENFVCBqZSBQYXNoYSBUYXRhc2hpbiBuYXBpc2FsKGEpOgo+ID4gQ29udmVy
dCBpb21tdS9zdW41MGktaW9tbXUuYyB0byB1c2UgdGhlIG5ldyBwYWdlIGFsbG9jYXRpb24gZnVu
Y3Rpb25zCj4gPiBwcm92aWRlZCBpbiBpb21tdS1wYWdlcy5oLgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IFBhc2hhIFRhdGFzaGluIDxwYXNoYS50YXRhc2hpbkBzb2xlZW4uY29tPgo+ID4gQWNrZWQt
Ynk6IERhdmlkIFJpZW50amVzIDxyaWVudGplc0Bnb29nbGUuY29tPgo+ID4gVGVzdGVkLWJ5OiBC
YWdhcyBTYW5qYXlhIDxiYWdhc2RvdG1lQGdtYWlsLmNvbT4KPgo+IEFja2VkLWJ5OiBKZXJuZWog
U2tyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29tPgoKVGhhbmsgeW91LApQYXNoYQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
