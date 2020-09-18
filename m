Return-Path: <SRS0=OGSP=C3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8176DC43464
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2020 14:03:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30DBB235FA
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2020 14:03:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="wAiHpinX";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="aN1L5afh"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 30DBB235FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1EPZy1emYASn/E/wzS+6W33FXbsxZ4oQIxxaccLXeAo=; b=wAiHpinX5zfQ3mwPiM4mhFciy
	7qHWv+KuR7abFmcxMp9aF8er8jx1kSPIhrIylUeMOKSldDVXdRWvlqxe+3ZIfI8rohq2l2MY0XMdX
	6RLOZsAbvorfJc1mAy+0CUxchXSWBkZLk51hfJVvsG+izeKUI7G5Kc5beosiz4ICyBvTdL/zZ8ZnP
	Fr/NNkSTUPwyeK1KmVFH0J+ZLC627fd0Ig0Ygg/WUVNMAymTs2WjIF78JU9qGjb9Qjj7ruKeYRSlF
	QWljltGLv745NCV4YWv0sEiGOiqsAslpWSSsvc0s/bkRrcRQHSmkPepNDeB+RGq1fUtF5++Omfa8y
	TUNL3OEMQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kJGyi-00088U-Am; Fri, 18 Sep 2020 14:03:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJGyf-00087Q-W5
 for linux-rockchip@lists.infradead.org; Fri, 18 Sep 2020 14:03:06 +0000
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D69423119
 for <linux-rockchip@lists.infradead.org>; Fri, 18 Sep 2020 14:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600437784;
 bh=ceMp5e2PEx8+OXFUL08K6kd8nS2HTjT3yL8yWWmw/XY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aN1L5afhODcB6oZbb3gXe25GiRn6TznrDNDCmMA15uZWO5FXTxYUT2+HApeOJAZJX
 VRkk+dX1u/ZsU98LrqqKjArYsJ/0g1yO0a4xDO9IWfLu7EgS/m6jCTi1buG9DXSmHY
 N1vxXeFCCJxB/wvlroPm6j1i1QAPrPUSRfOP8C8M=
Received: by mail-ot1-f48.google.com with SMTP id 60so5480164otw.3
 for <linux-rockchip@lists.infradead.org>; Fri, 18 Sep 2020 07:03:04 -0700 (PDT)
X-Gm-Message-State: AOAM530gmfY0hw1cKj/aL0Vz+LlQb5aU5MAnzVV2uE0YjHhaP00UcwtX
 IqFSwMQc1Qv4e6oznEbbAASzdrQ4e4Sbs2ub+A==
X-Google-Smtp-Source: ABdhPJzFRdqI6xDMxO2WwbAZUoxvL1C2s8llhjhqxIM2uXpb4VM3ABM4S06vvLPwRuD/6HYmbQsubXallQ2te0BX6Og=
X-Received: by 2002:a9d:6ada:: with SMTP id m26mr9287562otq.192.1600437783776; 
 Fri, 18 Sep 2020 07:03:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-2-helen.koike@collabora.com>
In-Reply-To: <20200722155533.252844-2-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 18 Sep 2020 08:02:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLB2wJE0VBmonSC_hBETgE-he50HJGbBBKy8RKS6GyjxQ@mail.gmail.com>
Message-ID: <CAL_JsqLB2wJE0VBmonSC_hBETgE-he50HJGbBBKy8RKS6GyjxQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/9] media: staging: dt-bindings: rkisp1: add missing
 required nodes
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200918_100306_096753_5E23DA34 
X-CRM114-Status: GOOD (  14.05  )
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Johan Jonker <jbx6244@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jul 22, 2020 at 9:55 AM Helen Koike <helen.koike@collabora.com> wrote:
>
> Add missing required nodes in json-schema yaml file for
> Rockchip ISP1 dt-bindings.
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>
> Changes in v2:
> - New patch in the series
> ---
>  .../devicetree/bindings/media/rockchip-isp1.yaml          | 8 ++++++++
>  1 file changed, 8 insertions(+)

Sorry, PW filters patches and this isn't under
Documentation/devicetree/bindings/.

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
