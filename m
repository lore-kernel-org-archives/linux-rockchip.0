Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E65A6CA0FE7
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Aug 2025 18:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xllkf3XsfNEMmXzeOGmm5QUuQ/Cf+wlMg7KNxGNNZtA=; b=glpXixjmgt3Ld9
	a7zfXMW6fv7oz/8ky6ShgUxjvR30n7WbIEI3ULUlbw8IBR3HSsuL+KtoQhTAP8HE4tSFzvs+HNRf7
	4tnbkurY4KFDGU/gdkwo6dhA3Pr7zTOJwkI2r6YD3Fmu1Wy1ob1EYxKRp4FQqKIf8dKPVOJ3AIPTy
	z6IHfWeC/11WzwpTcq/gURVgrhoD7PnsEXes/buPluf1AC4NWGGFMLRl4G+3uHAj3tRJ9yfFImgKj
	yUnzDEpBcnXekzjUFIihfn7sgXZ/smB1j13ajChBhmC2F1C9ILKz4lsgR+2TiSlBPp1QTA4jPszys
	hgiM6SG3s8Mxv29lBVjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqbyc-000000090Bn-3F1E;
	Mon, 25 Aug 2025 18:31:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqbyb-000000090BW-2sMs
	for linux-rockchip@bombadil.infradead.org;
	Mon, 25 Aug 2025 18:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=zWiX+6VTPBW9oMyyTDAuGR0ExNJ3ZNdezl4Ijz6qJzY=; b=VkTR86BJcbuznv8ukhsg8lmxk8
	YAY8fhZ9MmxC6F89YDQXw+gqYoS/H64JtPpFZLitcu4VbdDvDA8qSqA3UK4ruUJaAp+RHYs51XOKd
	Zn8P9W5/Ih76kEyP/6tIl/pToObq/rsWVeZUhPkZxJ6/5yrkzAJnTW3aw+0JfXa1GK7oeIdjDWsnE
	8PMy8wsg/yN0qsvEIql7pED45MC+RoHsAXVqML9w93QFASrSgSBMYZh2ciRjpNujHKLRHk/gP19E3
	/98NKDoq3Xmura+bRJkKN8tsFPbrBXhNsSPsb5e12ozF4aZFxwwd5jv/OjrPnJwqzzD+XoJq3ekCa
	FNLk4AHg==;
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqbyY-00000001zwt-1xRo
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Aug 2025 18:31:28 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4b2b859ab0dso24256961cf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Aug 2025 11:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1756146684; x=1756751484; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zWiX+6VTPBW9oMyyTDAuGR0ExNJ3ZNdezl4Ijz6qJzY=;
        b=UZ5g9RjZXHOC0azysMCqywxsugPh3JZbxXi/NK9M55+mXgq4ZTWWKXFCxY+U63coTs
         WJpaDbBE5/x2MwvDHAYc+Q5rUEunX0maXlYv5MgQi4ckFebnrtsRCr392TtxA3dKpRxk
         cVOyc6SZNkyeZGIBVVvh3wKFFh2ZgL7bXxFefWvbqBkP29hPhJiw4aWd50jSc4znlbsA
         a9lTYHfsrhRbWRgBVTLwcOiFhOEy8tcX6IQqfflTL2YA+sj2SUqa/ZnDiYRvR46aeNbp
         ffwxiEe+gtNNNqd1BEXTfcFWZvvRVvCsnzFCNyBy8Yz8oZSgaSQinmEdy28eRoTPuNKE
         /6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756146684; x=1756751484;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zWiX+6VTPBW9oMyyTDAuGR0ExNJ3ZNdezl4Ijz6qJzY=;
        b=elJyadTtyVgo9T4a1Z+L7lujACmuzlAQ1zm6lEu+bn5wn/hb5KIvFa07JnQHvTLKuK
         uBzptRVOR2h0gJll5SAyc9LZF0Hxw8/HxRl4DcPpOQr9l5oGryEuSDKtvkrFiMka5LqD
         Z7/odTt0t4TkSYvdAyy6PTrlrPXgRpADq95u7x2slXRyhlVWnZkW+vP/jN0StiA6o2OQ
         3lBjoN26StovfEp0X6dDSbJZTm8/ShoDk/qOiOnbMYNxx2g5QlNGw7hX4BbFIJN/slO9
         pFax9UZ/R5bSfILBheC9n3w6hjC8xcbrTFjJhYjSy8g4xlwvBpA0pDZve6eM15JpBvGm
         1xEg==
X-Forwarded-Encrypted: i=1; AJvYcCVE9EobuyHsHTxZi1SSZedcWwbIhnQM+B19yFJ5eoBc4E0uvirZL/WT0aFcbeYrLJPtGy8+k6X8D368yBC/Sg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzV2WuMVncd1kS89Tmft/X7ipJ9adpXo8uqxZpYQr7eerkjnElg
	RsT0uLc6qUFWFuiWSeuk42aQU7QNxotPeEMcFTI9u+RoNM1Pd3mjiBruUGcCgfJTarc=
X-Gm-Gg: ASbGnctbyo5e6JS3Fjvo3zhgJ4dqodxHzKEdsLVrqTCOnOA/2WQp0Fy7pavtw43Ou/S
	mjbpgeQ19NaIshankqqL2EinqCcN5JPfGn5xYOvhBaZKUcmbuUwQctD4ei6ZD0WSUUdy6KiLnzB
	MI69o62Ag4omfCuFOl2c5W7UQ3y3sMBX1MdD4kq2BUJTmUaiGJJqRXGpXBOl5g/gSvZXZK+8l2y
	uWtnVJmyjW1QVeacccn+Trm/4MyvYQSQ2XaTVX+f/3+MLs/bkt8DIltryOd5KU7poMvnL3LoBr6
	mT6UZw7JDdC9yEo3fM4nI4sa+5qu+TVScxuN+trw9JkRQQnM8u+HZTdKXH+EhyW9JyFB82gFVJU
	Pav+HbHf06aKG2D3M4ynMXKPkq0bWXOt2MNZuhkIRhKeAnHG5F4b2mdmhIruSxnL0FRrW
X-Google-Smtp-Source: AGHT+IGrrqtb5FLiQ6yBv5bSbXionDmSOOeGsus0fmtyrIvrknH2Q5meU+RUaqrB7rQ0ZREIDsRXNA==
X-Received: by 2002:a05:620a:1726:b0:7e9:f820:2b95 with SMTP id af79cd13be357-7ea110baa0emr1337281385a.86.1756146683666;
        Mon, 25 Aug 2025 11:31:23 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b2b8c631b8sm57949871cf.3.2025.08.25.11.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 11:31:23 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uqbyU-00000008lWr-2NRj;
	Mon, 25 Aug 2025 15:31:22 -0300
Date: Mon, 25 Aug 2025 15:31:22 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, joro@8bytes.org,
	will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	p.zabel@pengutronix.de, mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v7 4/6] media: verisilicon: AV1: Restore IOMMU context
 before decoding a frame
Message-ID: <20250825183122.GB1899851@ziepe.ca>
References: <20250825153450.150071-1-benjamin.gaignard@collabora.com>
 <20250825153450.150071-5-benjamin.gaignard@collabora.com>
 <20250825170531.GA1899851@ziepe.ca>
 <01c327e8353bb5b986ef6fb1e7311437659aea4a.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <01c327e8353bb5b986ef6fb1e7311437659aea4a.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_193126_727449_DEB51F4C 
X-CRM114-Status: GOOD (  13.58  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Aug 25, 2025 at 01:50:16PM -0400, Nicolas Dufresne wrote:

> Jason, the point is that the iommu and the VPU are not separate devices, which
> comes with side effects. On RKVDec side, the iommu configuration get resets
> whenever a decoding error leads to a VPU "self reset". I can't remember who from
> the iommu subsystem suggested that, but the empty domain method was agreed to be

IDK, that seems really goofy too me an defiantly needs to be
extensively documented this is restoring the default with some lore
link of the original suggestion.

> the least invasive way to workaround that issue. I believe Detlev tried multiple
> time to add APIs for that before the discussion lead to this path.

You mean this:

https://lore.kernel.org/linux-iommu/20250318152049.14781-1-detlev.casanova@collabora.com/

Which came back with the same remark I would give:

 Please have some kind of proper reset notifier mechanism - in fact
 with runtime PM could you not already invoke a suspend/resume cycle
 via the device links?

Or another reasonable option:

  Or at worst just export a public interface for the other driver to
  invoke rk_iommu_resume() directly.

Sigh.

> Benjamin, please improve the naming, comment and description, I agree with Jason
> its not completely clear. I'm also surprised that you do that every frame, seems
> excessive.

Indeed if it is just error recovery.

> [0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ff8c5622f9f7c644e995d013af320b59e4d61b93

This is already merged? And now you want two copies of this? I think
this is a very poor direction..

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
