Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DF1CC5B543
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 12:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jq13GZxlV6FBChLXjrztgBREtbZVsH/YT/QtweJ7I4=; b=Sra5LOQu5vB7P1
	0VhiTOocnZuuyHEce+Q489gzSc2aL4/GcCn2iZpkJ/joLpJig8MoY9JYZ+vGjZ2XZyvH8awPg6o6J
	2CSUI/JSmBFDpc8OV1/bdp46iAfHYZJnns+EaqgaCMFJzQAF62RRQL3Ia6pUacnWWRifMPQcPX9u3
	gkBXuijDrobiCABInpNJUsP24aSRBPKDdkyd5JcCZ5ANm49WitgjczoYLKWEZWJp2jiqpG399tZt6
	M+qkVfsYPSLoTDW/134ANsj2jwlFBY5Z0fzgUOBafu7sqfj4KVjJYC9U7DZMGpOkQ8fJNSzF4UohN
	zlAhk1c6Jfef5p9FqtzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9vm-0000000FV7D-1UEA;
	Thu, 05 Jun 2025 12:42:50 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9jT-0000000FTsX-0xMf
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 12:30:08 +0000
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-4a5903bceffso9481451cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jun 2025 05:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1749126605; x=1749731405; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MHytYTBz8Jqox6VQpT16hfvjWmYP5f5ufAlb0eIhBvs=;
        b=K05BOL6aoyxh9bEzSmTM5Q2pomeewBavpHGxuS5WrCHkRIBNrR7CKjz7ayEY+rnx19
         gaNjg3rAeLaaaXc/T5H7c9lTiLTGDjaPC1ezOso0+6OITL/435+WIoQM9MfOHtZw8wR4
         kSon4RzguMCdMCr1mySX6eWhnZ6tY8V9fntyPFkwVTHAfvPFwT0xK1QLSPECDGLLoP4w
         1bRRmjwGGOwmGkgaSNyUUvKOla8eTSNlhIOBPQqraeXrKxJ0BGjBpDdI0NUQ1ab3yBUf
         L/so/0or5zdnRnIrrniZOjxgvuUmdcymtSl2F5Dl2BDAUlcQcpCEYPTkSOe/Xp3LnO7v
         fnoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749126605; x=1749731405;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MHytYTBz8Jqox6VQpT16hfvjWmYP5f5ufAlb0eIhBvs=;
        b=VHPCebHggJL5XYBM/naQPgEotcPbVADR614J97VuUXs3QBW2tNbav2d/P+QOyi30g/
         ZRAkPLukaTrpsuryao0e2h1lNFogFEu2AbSeWcYbppOZ3OJ+x9pi1hn1ETQCERBHormd
         Qdsky+m4Obp418kX7sDMgP06g21iTWXM0Ae5TGSgm1XvqMDmFJblyg4cbEvITTFcSBLb
         jENWiApKKQ/aBZ/gw/c2QPKNFJx1JSMbBGPMdJnQj7a1mXANTcKtjpkXv2Gze0Zw7nJW
         XRaIMc8bGNMpT2Fk0Wb4pYo0wzcbVwu2Vn2dMvo3PdmrhSWoS0IXwGiIwxgTnMYsGvrn
         YBeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVR6BJTZ09w3dOlqLQ49R+RS/D3MpDjzIMTZ8cSrJ0BatjDQgkGOAklBZORsIQIVO7eMRddJFsybz9Gs49vxQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzsoOkx+4l0pkC91CrQY9YSD3X9XICAEhtE/ZjnqERYRDdKXPY5
	LU0CtiLIRWstxpWQnW15H4VhnB/LJhQ07LCOv/GqJx5mpjYUwgjZky9NvNCrOlBFTnyzFFYhdm5
	ZFzr4Zqq+zY3Mt0WBbcIZARw2IBTleagSiNuSRQtp1w==
X-Gm-Gg: ASbGncs9vy5XCZsJBgRSMq9XZk94xE1gxksg+P1Ewuip1cywNmC0siDMHl89SHAaJTK
	QduGRiExh9l5464qMPVukpiuvVNcOry3cBInGu8cI+2uRdlsDWPp/KbT8Ak/1XcZywNecxsFflG
	Q+DiJ36UFOyNxN7Su/jDulYtlXP0fvzgA=
X-Google-Smtp-Source: AGHT+IGJAH4AP5XYgqu4Dz9W2BoN5h6LEeBf/9Q8A7vKd11Zim4MAapYM0SxBDOcqHNIkaF48u81Kw+0gnFTHvWWddM=
X-Received: by 2002:a05:622a:4010:b0:4a5:a5df:a95d with SMTP id
 d75a77b69052e-4a5a685bf82mr117127441cf.4.1749126605571; Thu, 05 Jun 2025
 05:30:05 -0700 (PDT)
MIME-Version: 1.0
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-6-237ac75ddb5e@tomeuvizoso.net> <CAPj87rPv7Pd5tbXhpRLaUJCGB8JmD4kfF50WRsEiST2gvtg3Bg@mail.gmail.com>
 <cc21a090-801d-4b32-bac2-01cebf896c85@arm.com> <CAAObsKDMhuqYtn=+xR6-n=Uk+5_rU91OqVKyQ5cxhqfTo5svjg@mail.gmail.com>
In-Reply-To: <CAAObsKDMhuqYtn=+xR6-n=Uk+5_rU91OqVKyQ5cxhqfTo5svjg@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Jun 2025 13:29:54 +0100
X-Gm-Features: AX0GCFvvNcCeZ1g6JOrd8mRl54fhnHPJ-VauKDXwMUlQ5VUcNOU5PCV9zv8SWHk
Message-ID: <CAPj87rOKGcufM0xB+uMCxhs0SdXCHpViyTd+jQ0+=B1kSihvVw@mail.gmail.com>
Subject: Re: [PATCH v6 06/10] accel/rocket: Add IOCTL for BO creation
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_053007_417933_F3C2A0F2 
X-CRM114-Status: GOOD (  11.64  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey,

On Thu, 5 Jun 2025 at 08:41, Tomeu Vizoso <tomeu@tomeuvizoso.net> wrote:
> > Indeed if you're using the IOMMU API directly then you need to do your
> > own address space management either way, so matching bits of process VA
> > space is pretty simple to put on the table.
>
> My impression was that the VM_BIND facility is intended for SVM as in
> OpenCL and maybe Vulkan?
>
> Guess my question is, what would such an accelerator driver win by
> letting userspace manage the address space?

I mean, not a lot gained, but otoh there's also not much to be gained
by using the kernel's range allocator either, and it saves userspace a
roundtrip to discover the VA for a BO it just created/mapped?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
