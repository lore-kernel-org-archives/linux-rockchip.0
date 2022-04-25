Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30B89C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 16:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L4elwoDOa4hIbwCUN7g3v+qHTCIqC74BWHv0ri2QXSw=; b=gN1bo7K9hI1C8j
	cyOiz5eLI4fJNPt5ahGT56TrFL3AsTCzW3SFJbAIZVZKVdq9B+S9dxpirl2LsGcGkJcTc/5mjluu8
	sYIYiwMgrMfPH6pznxn7bf0w7aa/w2l7VgiJ/4yUiTZEnREhZqlVifRPWTy72DHdCZiq/PsJ8dMG+
	iSafZbxBgxaxcqQu0Dza4noGRUVQ/nPuAMQr80WE/YCiFe+gaYf10fF2E+q+TdeHhWrIRVggifH5l
	hHNxiBe+v1LG6DugC7ea0/r8TDD+BD+Z9WBndz9kFpinMpuD+aeKGQ+6qyxgN/mCy5/QyUkZN+pU7
	PETUhHOOfa48+N9s2E4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj18p-00ADEc-8S; Mon, 25 Apr 2022 16:00:47 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj01D-009zAz-56
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 14:48:52 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id d12so8255338ybc.4
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 07:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Sr6b7C5afJDDAqoesKdOXVbx/5xPPqhbOStz2BfAAM8=;
 b=74V1JyaQOyVdE8/paEDiToqLZYghvipFratYXEC+AESSwVYoa3TsoKuI32rsI9cU6J
 7+/LxH73LeT6w1JTcAPZHMlrgBxBWl+e+UXua7svahYj0K4E4WxyAoZS855LzYE7gB0q
 RnVHaTAvY1C/CJgLyneeFnNGqJs/Rg4UkDHMIajj6fNFqzsH4bM+AIWV9e3AO5KWrL6C
 o+UUOAOQSBdzcBsP8zkYeEgfDBrJOsEOradTrVYtufsqFj2/h/kJNPZSQSR4Jt6Wj9oI
 52STxYoJuRvVi9TxEWWSOfrmebfqHu3E3d2rdOl3Fe/nspJd/ijy9dF4pUTVgM8WYyj5
 MUkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sr6b7C5afJDDAqoesKdOXVbx/5xPPqhbOStz2BfAAM8=;
 b=6hr0Uha1T3HnOuaps/g5oDyJiD8+89NDQcIUhvevWc6M6fN2Ape69mxT7+Li5ZYmnu
 U77OOBA4FYghoabG9YjORBJlkomE3XEi3sTiWNVWDcAP5U114MeEyDLYCW2SgVB3KpP2
 jSkxOL5inlFNEhOEqdezCg/7+P5vGu8NGaqYHNQTBe0VR81G7ab3ovaC4D38iMETjgnj
 w/UbK3ImCT6ZJMCLTry8iaEHTjC3oG6Kr643ehccftZ+jLBVeEGl5+TcBEs/dx/SDVPU
 ukF3p2aEbyS3LZfBtU+eF77foxbjNjpkfKS4nBkd35iARbITnbTCQGpR/EWuygL4uwmY
 dSQQ==
X-Gm-Message-State: AOAM532GLd+qWoo63pAmRoW8dStP6jpOXwBqNbiGViKgEinQ8zLLFDpK
 8rYOrK+Vl5M2/8cIxe6AAwM/8BjiWmfBmk3S1EcSSQ==
X-Google-Smtp-Source: ABdhPJxEJzKWpI1kpuZz9yZC1dNt7gUFPbj7o4EtpTcTkIM+fwPafDb8pnoI782CwIAAuuDCwtpjyZSL/irjFHdrk6Y=
X-Received: by 2002:a25:ad0e:0:b0:648:48f7:a03 with SMTP id
 y14-20020a25ad0e000000b0064848f70a03mr7074330ybi.111.1650898127908; Mon, 25
 Apr 2022 07:48:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
In-Reply-To: <20220422072841.2206452-1-s.hauer@pengutronix.de>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 25 Apr 2022 15:48:36 +0100
Message-ID: <CAPj87rOqW8m-NybVYxdMP9TiTr4fhsBpN62j07KN9wG9mZGDxg@mail.gmail.com>
Subject: Re: [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de, 
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_074851_220044_E64B4C61 
X-CRM114-Status: GOOD (  10.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 22 Apr 2022 at 08:30, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> It's v11 time. There's only one small change to v10. Discussion seems to
> have settled now. Is there anything left that prevents the series from
> being merged? I'd really like to have it in during the next merge
> window.

I don't believe there's anything left, no; the core driver itself remains:
Acked-by: Daniel Stone <daniels@collabora.com>

At this point there's no reason to not push it into the tree, and any
remaining bugs can be shaken out and fixed there.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
