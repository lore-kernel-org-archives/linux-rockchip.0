Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6B3EC8303C
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jul 2025 16:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A4d0jYpIIylElYQGa4lD6ZdCSg0+lv8fwa1AFor+BQ0=; b=O/8JR1X1Afe0VJ
	/zG4zdKYopLGnnZeemTcChCNJDVf8x992QGnqTYEGM2Tbk6DqKDWsx7CQaq0a01nuyVww6TXxOGvE
	DciTyCzgawUxSh+GaVH6UoU8qhskao0Vsg56MmH8WRyg8Ir/UpWiZIn2v4bOpjeyY2gfIm/SOTSfS
	rLe+k9toJCcLOuLq+no4eMetvErx4XuUFDzeQ1RFtbAwg3rSDkY7KafBpvazi6Ckf13ihlHeYpJw4
	+olzBMaE7NzzzJb52CmcS8a34kzOxRNnISXHUbA07/g8dKGacqgne4gUQNXtMoOfI3axCEHIINWTz
	08ApkcbJ8fUoa3MwksIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYoID-00000002xLo-3Wup;
	Mon, 07 Jul 2025 16:02:09 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYoDr-00000002wZz-0XC8
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Jul 2025 15:57:41 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-710fd2d0372so32557107b3.0
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Jul 2025 08:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1751903857; x=1752508657; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5nyJdBZNGQXRfrLLWrFULNmrJUzDZd+q5i06LyK0ZHY=;
        b=gupNBZSLpdRlyfUSsd7oQ92guvr0Dl3+zxmuV3R3CAYDqg0BkByXXNooBx76TGg6ym
         lxtIo52+So5UsbXdvS0Ae0gll5n3NjCciWvvQswRfrL4qQLiwZgjsxfO6VsPGmvQVIiF
         Ik+E6fs63GOAgYgAZtpxnfQRxtUZdPLOnjGOxic0e3zvhrcso8vwLi6RFP6mwsPKgu2B
         ctLgjrBAEZLpyg2Vkw9sN6PuSTW3Bezdm7+Onf9uuRF+gZzFFAhvac4Jcwoy+okYP9MA
         WMJFErLtUmYJ8ZCTy9S9O0JoV4+g1SBUMeu5JQLNFTXD9x2q7RTDd5yGsjg30wxfxdTr
         PNuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751903857; x=1752508657;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5nyJdBZNGQXRfrLLWrFULNmrJUzDZd+q5i06LyK0ZHY=;
        b=BoJr30CZYw8hvd0/cu94NMjNkfYD0FrBXJKW7B3MDQMYfSfr852Bw8vd+tEAxYnvmY
         WcVyXvcvPklXfehwt+4/hfp6QEkRfNXGp3j5bZVe+fWJ8QMqU6Gu6MW/Vo1n69w5fC8z
         D8QXN2EjuKQgsAGRrBcskljanureF6Q+0vx47TddpGuGBd+PqJrMqnx0+KxA7DAoUVcd
         lyzEd+ZI/tevgS1RwPD2UPYa8MCd3UhXZ8hWmqDrIZ6cHe25oVz80on9pWs3fvSopx/4
         v3S0iC2A9jKavzySCsS95zyjMO0UJexclDFrKlAeKkQGeYjfpESupnfQqbWOl6YO8UwX
         GK3g==
X-Forwarded-Encrypted: i=1; AJvYcCU2/7mDrkdae1PKBH/oXkWMUXdNp3eqJvoEZ7HmyqrjpQr1qeKctHdvd2HvCL8vlrd5FBV4eC4T3yC8an2xew==@lists.infradead.org
X-Gm-Message-State: AOJu0YzCj3VS6BBxdwG41sDpHG5vyFYL3RwKehmfdsZdoh2rYFzt0Jjh
	yDBuZ/aOMXZw1EmS0WUWeUJAPeXwySRUR5OvpQZc8NvcnK0ymHQt7LgZQ/BaY4r2h01h2lRu+f5
	jDbMs/MBEZnIRm9NNKsHJC/UDFqeAH7acv5xOu8A5fQ==
X-Gm-Gg: ASbGncsDcsVfHCJRlkUWggLv7k4xs7jhFLcU2BbYB1yuxRw35OpcT+SEwNBI1qpQjan
	Fvhre75UghlBCN5Rd62k1QcDVN3yxpwdxNGyd3SXpHyKaGT3X9nJPn5k8hf8iDcDS4B+NR1N32Q
	jqW/qt75SAeM+EP1/dh41L6gWAHM2bRFC19It0TrN95SKcqLmeI7EZzNerNPfAXrBNZLMxL/Ks0
	cQ=
X-Google-Smtp-Source: AGHT+IGXkinsClHw9T6S8vqJyiAKqsR81bmWFSB3E1wGxVpBShaqy93Jxk6vBcBEnqP8XUAGbCaobGyW++qJmVzyqGk=
X-Received: by 2002:a05:690c:c9d:b0:712:c5f7:1eed with SMTP id
 00721157ae682-71667ecfed7mr187732797b3.16.1751903857530; Mon, 07 Jul 2025
 08:57:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250704075225.3212486-1-sakari.ailus@linux.intel.com> <20250704075431.3220262-1-sakari.ailus@linux.intel.com>
In-Reply-To: <20250704075431.3220262-1-sakari.ailus@linux.intel.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 7 Jul 2025 16:57:20 +0100
X-Gm-Features: Ac12FXzisPQw3Zak1z4PISdT8JVI6i-l6yfwQpDlf8066YfTihFWEfCR_f0QlqY
Message-ID: <CAPY8ntCgEb9fd_rMGeWSeR=Hbzf1GNQeSh-gRcubtwzoahqnxQ@mail.gmail.com>
Subject: Re: [PATCH 41/80] media: Remove redundant pm_runtime_mark_last_busy() calls
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Tommaso Merciai <tomm.merciai@gmail.com>, Martin Hecht <mhecht73@gmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Sebastian Reichel <sre@kernel.org>, 
	Alain Volmat <alain.volmat@foss.st.com>, Kieran Bingham <kieran.bingham@ideasonboard.com>, 
	Umang Jain <umang.jain@ideasonboard.com>, Manivannan Sadhasivam <mani@kernel.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Michael Riesch <michael.riesch@collabora.com>, Mikhail Rudenko <mike.rudenko@gmail.com>, 
	Steve Longerbeam <slongerbeam@gmail.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Nicholas Roth <nicholas@rothemail.net>, Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
	Sylvain Petinot <sylvain.petinot@foss.st.com>, Paul Elder <paul.elder@ideasonboard.com>, 
	Matt Ranostay <matt@ranostay.sg>, Nas Chung <nas.chung@chipsnmedia.com>, 
	Jackson Lee <jackson.lee@chipsnmedia.com>, Dmitry Osipenko <digetx@gmail.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Vikash Garodia <quic_vgarodia@quicinc.com>, Dikshita Agarwal <quic_dikshita@quicinc.com>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Sean Young <sean@mess.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Matthias Fend <matthias.fend@emfend.at>, Marco Felsch <m.felsch@pengutronix.de>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Ricardo Ribalda <ribalda@chromium.org>, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_085739_164409_6651E505 
X-CRM114-Status: UNSURE (   8.56  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sakari

On Fri, 4 Jul 2025 at 08:54, Sakari Ailus <sakari.ailus@linux.intel.com> wrote:
>
> pm_runtime_put_autosuspend(), pm_runtime_put_sync_autosuspend(),
> pm_runtime_autosuspend() and pm_request_autosuspend() now include a call
> to pm_runtime_mark_last_busy(). Remove the now-reduntant explicit call to
> pm_runtime_mark_last_busy().
>
> Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> ---
[...]
>  drivers/media/i2c/imx219.c                               | 2 --

Acked-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
