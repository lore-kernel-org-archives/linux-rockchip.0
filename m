Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41D11F53D65
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 15:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Bk40NzZI/3wADCQ9UTPPE8uNSj2HFnzYegllZuy0Z4=; b=3WmmHLnvYdIB5B
	bMyMQfhidzC6SlqAlTdMlPkjQHFdE26uBpcqTZ+UB2cxowduRxkPMEf+L71KeEkLAsj3yNB2vD2Fa
	hMPIPkiP1ZNwe6ZVFJ9z2Lmc/Pb8S8GLPdMqGcNgeL8Brhoei85cTwH70k3rnVzqVHrE/oS/K/80d
	IBDzZ06Ct+hpm6vQRuz3ThoDy0UiPxlpPMuAjzfapwXWaqQbfNGGTiSGBK1oZWUargFtvy6L+frah
	bXnZiGtZFljCYl90a65nH7hw7ASz+QCnA2SCTTPgMeahG+boTeimLq6CVImevHAz6K3CqZk9VYKHM
	gh+QI1Lf5jq5XqMFIV4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w29fh-00000004IyD-2vec;
	Mon, 16 Mar 2026 15:15:57 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w29ff-00000004Ixe-1w33
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Mar 2026 15:15:56 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5a10d130b37so4287323e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Mar 2026 08:15:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773674153; cv=none;
        d=google.com; s=arc-20240605;
        b=Lc4HZNyg62BAunWFLZkxiobrg8tRUIK/4bjJlwcP/aCR9m9XqKJqHZBZBe4xKJ/0NF
         GxaQYKnh+tu6gJILuikEx1YhUbWK5ooUfaQKsBb0uPlk4T1UkxLm1pU5xhCQ+mJ0FhE7
         +LMq2TetGegqFM8JP8BcnO1mIJ1zuXAcT4cjon42vo+FlQNyAECnQMydNVCdk2a9zk1e
         XFXZLwubFf9zBhvOf2ymsCD2X9VBeW2+8y1mJkRCQkW7CtvgHrYPJPuM61S+H9Yumk2/
         xaZZcvk+L17JxO8Tq9DbnvL4E4z86p2XeyYM5kaFghagjl3GVWEaTkxywndX8X1bZ6i0
         FtMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LqHFA8ezpiqlalV4mlS5Ns4Uk9hJm+DS0/y0X5Bc/n4=;
        fh=pDtGWUGasROi6rJpWbjwQCoUBSW1Jue08rCSEU8knPs=;
        b=aQxzbg8EXQNs6vFhxGf+pLTu0e3c0SJYK5nQvj6EHI1CD+XXUhZnyKuU6O7+96GUBF
         dVAVDmVghAekkPaKdjMBLRpG/xTnEsq6l4rk4KjINwJ7JUloyChqSngMMcIRHNT8Kjet
         E+kufKnsV/7/KYUcpfRL8DJVbldF0agL211G/Cj8i58YL/XrZRC1fZdc7y7d2itVk4IA
         JezMBSjSkQ/SQeQTGT+4gRB+Jh9pF5n/PoZpe7mxEiSkfiFIEEcPR7O0ujqjf8cSux5+
         Nyry4hLGXXJm42vXlTd2zXVw5w54vhomhz6zB9vm0lUuK7cFMP/n27+qpomfWP1oLN4v
         j+CA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773674153; x=1774278953; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LqHFA8ezpiqlalV4mlS5Ns4Uk9hJm+DS0/y0X5Bc/n4=;
        b=oladjpt8Cp1VnNkdQCO3T1eeNCgE0TVD8QsgGFwWdz9oQ6Hj/T6v50ez0zLSs6mbT+
         jIh7poK88tngByXWzV8JJJzdqDXbD2Capq9ubPyXO1pGFrKt8Gjj18Ob4tVfxEq6V91q
         OiNiLOK0EP1IIB/L9EMHKt805VoxRu3hhkKBkGVp6e5myFbhlPV8wRUtNAJaqJTrJ3b3
         YoIk1CuZ5d95NNYWMBVV3AfImXzU8wxDF8q39agVGtTLSkKTisyb7W0VNRzkY8jSHM4i
         SN9eMAe+lRAFLqoWCAIjh0XF/NNy8JBbXJgqeJKRTuyhNjv6pigGypWR82Owd/qSmcHw
         g5Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773674153; x=1774278953;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LqHFA8ezpiqlalV4mlS5Ns4Uk9hJm+DS0/y0X5Bc/n4=;
        b=hbD2H2f3RXcz3nl8WvkGNv6BnRjY/zdiX7hzQAfoO4EPF4coiYNEJWk2lU6fNyJjv+
         oQx83IKrblvMMxqcGWaXoh77O6JjoWjpz8AukvJER6oieQANbnoX9BVHp7H7U08f9kBX
         2AwEIpDEGaukfkMX6yDD20r/Avem8t5MxWSdelxxPnUschF4lCbMbXkIbLB9TZvjE6l0
         IWmHgFjsBZri+l9biCYMACDu3mlKuTuy03je9Y56mSm1YxKUoeus0Bs4Yws9lJhO1bWb
         KbGCslKLwtu0yFZXISX7mcdNSPiZ5rfvPtsq1beZUy07IIY0cZv45wyL8zwUiImSARAX
         QJTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdU579FuCM8hxlteMlJ01fM8ZJ4WK57xcuYuRWMYhkK2xftsb6Lt1fzlWogJZvPku7hc+xz8e417DJbCoTIA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzjeLi1FDFuxjJszhgOhIJeudCXO1WIFEOtG1vxu64rv5ki+99E
	61CfO5w1aRBDGp/79ualIguZoD/6lSlr8gcxPNRLo3GERpgcdqIWZLhC2WdLVntYVLxb26IV5XC
	eh63qWGYgJLzTqwn5EPdmcWqi5895gx8WV2tSl7hi+g==
X-Gm-Gg: ATEYQzwIMCQX8R+yr5bFvRVWb4xixP7TpO9FNNabTGaWwLkWf86EpjPPq7pPY/3PSSz
	fcL0VzCnQ5xilgl7mFDMdY8k1Zaqj7xnzAvyyFTJForYXMz2eOrPe/SiiRDwfXB+JNIi8ADWRyx
	ICegIpJ+BsIqQ0D+phQudESbmOVPbkzhpisCRq5sD8fJHb04Dc9BrqxRP/9gIG+PiOJWi7JwLHm
	bx06rIhi+cFzJDwzRjG3JyxlmWOXnzC1cHwNePA2aLz5yJGRVzIPUy3SZ2fP+XVH8jTwNXFsqlD
	XDVwkoLW
X-Received: by 2002:a05:6512:3786:10b0:5a1:5994:2773 with SMTP id
 2adb3069b0e04-5a162668c3fmr3597222e87.14.1773674153033; Mon, 16 Mar 2026
 08:15:53 -0700 (PDT)
MIME-Version: 1.0
References: <1773026943-111633-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1773026943-111633-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 16 Mar 2026 16:15:16 +0100
X-Gm-Features: AaiRm51ROAc5PVIT4fZKKt2_UCIWlTSjB2cm-yra15BjSZUgNMXbRf49SImO_44
Message-ID: <CAPDyKFqqbR0ir3Ja4mMXxOveKQUwaeSMSDtqnhUuS=iriWRzjg@mail.gmail.com>
Subject: Re: [PATCH 0/3] Add phase map support in dw_mmc-rockchip
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_081555_521502_047F99B8 
X-CRM114-Status: GOOD (  17.19  )
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

On Mon, 9 Mar 2026 at 04:29, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
>
> Hi Ulf and Jeahoon,
>
> Currently, in dw_mmc-rockchip, the rockchip,default-sample-phase is only used
> for some lower speed sampling, while the output-phase configurations are fixed
> based on timing settings for all SoCs and boards.
>
> Subsequent validation shows that this approach fails to achieve optimal timing
> performance on many chips and development boards, failing to meet test requirements.
> Since different timing profiles demand distinct phase configurations, we introduce
> phase map support to dw_mmc-rockchip to address this issue.
>
> Additionally, given that dw_mmc-hi3798mv200 already utilizes phase map functionality,
> we avoid reinventing the wheel by moving the phase map parsing logic into the core
> dw_mmc framework (similar to how mmc_of_parse() is implemented), rather than duplicating
> code in the rockchip driver.
>
> This change maintains backward compatibility: the original default_sample_phase and fixed
> drv phase configurations for different modes are preserved, with phase map values taking
> precedence when configured.
>
>
>
> Shawn Lin (3):
>   mmc: dw_mmc: Add parsing mmc_clk_phase_map support
>   mmc: dw_mmc-hi3798mv200: Using phase map from dw_mmc core
>   mmc: dw_mmc-rockchip: Add phase map support
>
>  drivers/mmc/host/dw_mmc-hi3798mv200.c | 11 ++++-------
>  drivers/mmc/host/dw_mmc-rockchip.c    | 27 ++++++++++++++++++---------
>  drivers/mmc/host/dw_mmc.c             |  2 ++
>  drivers/mmc/host/dw_mmc.h             |  2 ++
>  4 files changed, 26 insertions(+), 16 deletions(-)
>
> --
> 2.7.4
>

The series applied for next, thanks!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
