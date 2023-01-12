Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0E42C54EBD
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 15:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEYgJzuU2EMo+2QZwliw+LUhdJnMpV5BgEHrAVUuZko=; b=hZ079ivRDQvtIF
	fxXXkZmk6JaL5We3Qkf8NFEIQwSr/JGR0sVcUvMo37Uu1+vgLaORjy+nbUW8DjEP+SO5MPmPCT94H
	im4cFVWFQS8LXXC77+w5HeKc7cFxA/mlZ1wKLU6BIFMBVsNAizXi9MQujK9oRvRgPKzNhupeFynI0
	TRNAqAaOgn0OH7FT+bLMBZz5RIfIsNGuR9ZMqOzxj1gV59pma6Jc95B4oKZjoT4J/xZFCjGm841Of
	mC2Re6c0UoAtWUu/Ts4ES2CerwFv9WlZ22nSXppxR+G/TNR7r/AcLP10MT3p/cKcOq2eHV1YroWfV
	tbf1CccGO6U47ifLbOSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFz4N-00FVZG-4k; Thu, 12 Jan 2023 15:00:43 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFz4K-00FVXq-LJ
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 15:00:42 +0000
Received: by mail-wm1-x331.google.com with SMTP id i17-20020a05600c355100b003d99434b1cfso15294157wmq.1
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 07:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CEpR1Oghu5jEh+XHJUeeAWnEqFA8sGLzT1Q2gGhmDfc=;
        b=kQ63ArvEjzXqRck7zKZEwAyh5nGwRANCnuIVm8WrAdRY8tMo44S4wS/RYukWQlYZbd
         w8rEzqK5GlM3IcUlsH21acsBij842Z9DoNE1nHdehTZfcPDDrxF1oDT5q1/Prc9hoRxl
         7bE3PjjzggefIaBl4Mnl+ecOD7+5lUXuZgJgAYK1dWal7VkTl0v70kDluCGMiGnH+Oo5
         XfO1KVJtE2pyptoFW9xbLPWc0fSy/z7AEUAjTAv8+X3VfN+D0xdWMCmkmaQHh3UAjKpI
         AYsx3g+FtJddVDZllZlTYo2UtI3+l47u/VuVhB4hWhgXBsG30mnNDGUeTGrV/usiX5hq
         ctLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CEpR1Oghu5jEh+XHJUeeAWnEqFA8sGLzT1Q2gGhmDfc=;
        b=D2vFXjon4dQGN86oyz6pfMNL9cGuaK2RUCkDnKVFNsmbF4LRQ7lLw0WYNPsNivDYPl
         ur3U917jTnlVHKy4EMLKbvnZ3aiL4dKm8pIl+EUkLYxG2M62NWXjUgjdmCLKUz+/qaNU
         k3ASEIypa8McetXfDyx5B6a9Y+eBe3M9X7pnCb/SQryiXdz/h5zQ+iKNHd+mvPJ+rsRa
         wtcY1/ltoOhd0K5jlZVMV7PDA3zsR2elig5q/7sevy+TZiTWonq78srQF7kpozcyMR/W
         GWsIaQPgHwccSLC0JkBhFc1p81Yjrhr8SAsKWdWjstdkcRdGDWYKBAnGkmNbN2K/3rxH
         frlg==
X-Gm-Message-State: AFqh2kpfSTAUWA55+4zTQaaQ/eXUPPn3HuBVlh2TPUR5Or4+HCSTjRMQ
	ogCdDBIT7E9zRKc3pvNysq0=
X-Google-Smtp-Source: AMrXdXuGLkT3WZD2pYqv1rvVwoetthcfUn6ngawoGge0A/6oW0jjMXW61GolUhC9dFk9o4yNWMSfww==
X-Received: by 2002:a05:600c:3b29:b0:3cf:d18e:528b with SMTP id m41-20020a05600c3b2900b003cfd18e528bmr56615779wms.39.1673535636697;
        Thu, 12 Jan 2023 07:00:36 -0800 (PST)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id f12-20020a05600c154c00b003d9fba3c7a4sm8832671wmg.16.2023.01.12.07.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 07:00:35 -0800 (PST)
Date: Thu, 12 Jan 2023 18:00:33 +0300
From: Dan Carpenter <error27@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Sebastian Fricke <sebastian.fricke@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Collabora Kernel-domain <kernel@collabora.com>,
	Robert Beckett <bob.beckett@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v2 04/12] staging: media: rkvdec: Block start streaming
 until both queues run
Message-ID: <Y8AgkQ8WehS4PfX7@kadam>
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
 <20230101-patch-series-v2-6-2-rc1-v2-4-fa1897efac14@collabora.com>
 <CAAEAJfBuA=gTpyeKs5mj0_1z+x5sZhse2OGPP5nmb5E6XNjBKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAEAJfBuA=gTpyeKs5mj0_1z+x5sZhse2OGPP5nmb5E6XNjBKw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_070040_736591_F325CACD 
X-CRM114-Status: GOOD (  16.97  )
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

On Thu, Jan 12, 2023 at 11:55:07AM -0300, Ezequiel Garcia wrote:
> Hi Sebastian,
> 
> On Thu, Jan 12, 2023 at 9:56 AM Sebastian Fricke
> <sebastian.fricke@collabora.com> wrote:
> >
> > Ensure that both the CAPTURE and the OUTPUT queue are running (e.g. busy
> > -> have buffers allocated) before starting the actual streaming process.
> >
> 
> Usually, you want to write the "why" in the commit description,
> instead of the "what",
> which is (hopefully) more or less clear by reading the commit change.
> 
> The commit description should have enough information to understand
> what is the impact of merging the commit (or what is the bug without
> the merging the commit).
> 
> If you are fixing a spec violation, adding a reference to the spec is important,
> if you are fixing a v4l2-compliance, pasting the error, etc.
> 

Yeah, and if it's a bug fix then add a Fixes tag as well.  Even if the
bug was added when the driver was first merged, that's still useful
information.

regards,
dan carpenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
