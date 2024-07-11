Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBF96C3DA47
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 10:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2b8ojL7RZSrHABqN9jqzHSPKiCzRQfKqffALNc4oefs=; b=ESQZZJLs9usDGR
	TNfOSm73j7vsuMWPu3/xfE8Dqgpreh4JqOUddYY5GS00a2cM6AwTvL60P1gdWlDzt58PXpBaxPGUZ
	17j3sJpwC1It9t3hn3BqKyGVUjcnno/NMj4Xhf02qxZ4nzcwMrS7jz+yJuiTNdtIxrZR8kL9fbpCW
	aq/l2JL2K53P0wjAv+GvZpUdRTEiTZtRxFZEFPLu4p3hv+lO057yHnlrq6N4w7XCKmsQ9/yCfVSjf
	cHNGH2An0UBSX/7sR4LQOO9+6GVLiZSqahx7VwKzA2TdBVT2UeSOgE8bg0KfRezdVhk24RdW3GXYq
	mB1kcsnKJ7EdXdF6EkIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRqrZ-0000000DUUS-3twt;
	Thu, 11 Jul 2024 10:17:21 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRqrX-0000000DUTd-1XmE;
	Thu, 11 Jul 2024 10:17:20 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5c47c41eb84so395353eaf.0;
        Thu, 11 Jul 2024 03:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720693038; x=1721297838; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/SH2t526dhX39mtIBzC9dl7zRsTEaWsVBT9qJQAA7Pg=;
        b=CojZTExdxFYiEvkSCKSPFeZzBxJ8Te/uAhL0Xt5p0yiN5OK6H6qAw0Wv59XFiiSIm1
         FjjVH+sDoSfYD9dRHgqBvDY6/r5mgbRcLh8NE6ATGt+lVGHFLChIE21OIIcQ8mSyBONQ
         NxXjj/3OmS35A+HDX4GQ0Q5TRZg1LBhab2zehTd/p8G6JFyaCnkIDUk5l2VRdoFe1IUf
         K0IjdcqB+OJBBZ8u1bREMNEolupNBQPtOOHhNu0N6pHZxCPYmXSleJ/tsrMoqHfMNgiE
         Wwmbbd7C99RgKcIhHOojgKgT10q17VMLqcX2j0cg5BlQJBGmRvwNB7WUqDuF1yCcxqn2
         t0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720693038; x=1721297838;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/SH2t526dhX39mtIBzC9dl7zRsTEaWsVBT9qJQAA7Pg=;
        b=LcqN5V6NLat7SxHJL4yv9VRccPizrTKTYgqMPoCbk9i1xZH79nU+oNown6qqosLzGN
         ngA92l96znDtGKHkmYwPQOl9DJx9Xs2RKFAOuoqM98pZA9Iz8pMGwiRIolfh2okq9g3I
         qVF2eTBaPtM+uc47mlGzZwbL/oeuyFsRE9Eu4xh+dexMNdhYIgqsbYfwaT0mImI/mL2H
         T1w4PgiZC/KOqFm8l4o92oXAFBicsp+BlIm2s/naHeuMsbCzSQM7Hl33nXyKzRnghygs
         uV8ClPgER6W9HGUkzRU7Gb0LWBqvx9U2uOhM76Wz2OjLz7spEJHRV1boMSfgsqf3tL1n
         VLiA==
X-Forwarded-Encrypted: i=1; AJvYcCWxFdgNlTxB7loKp3mbysr6CV6Jrf9ocMTm0s7Cy5+ABA3+jCWezaoaYTP+j7jO2mEanVnbk/vHgNd4XjuRIU8VCNmZa0cfac2JXKMv6YfzpNNeOASKOSJxrxUn8AuNOMCWFF9ZLDlWhjHRQDdQ9nnc30TUYm6ly+c=
X-Gm-Message-State: AOJu0YwigNs8ZgVCyBf8FAfazmWXpjiX76Dworz4vehvuN88+mB5FmOz
	gYTsFkyVm75RnB8/NJGyzFz7FeOik3TFTXKx0mRluWqqXfIGhGaDP3H7IJr1dzuIPlNRAdupdqB
	PgBjDujKWmm0FBedN4FNLO+GeyVt+A1Hr
X-Google-Smtp-Source: AGHT+IHE0CUu5uCHf8wuz70NvrhLwZ46PB/m2KnHmeab6LkAZaTxoQqnxGgC50x0jjH9cWOx4W08eoAx0h6xKooKYdU=
X-Received: by 2002:a4a:1d02:0:b0:5c4:10df:c479 with SMTP id
 006d021491bc7-5c68e0a1392mr8324798eaf.2.1720693038361; Thu, 11 Jul 2024
 03:17:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240711060939.1128-1-linux.amoon@gmail.com> <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
 <CANAwSgQCn3jgiruiLs0cu-C+DguLtnk=msboAh8jNSF4P28gjA@mail.gmail.com> <2017670.43MJ0K8Myn@bagend>
In-Reply-To: <2017670.43MJ0K8Myn@bagend>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 11 Jul 2024 15:47:02 +0530
Message-ID: <CANAwSgQjTc7_DFyTSx8VSMmr69tYM=iSVc51RxgRoasj8Stgrg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org, 
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_031719_428324_AEB94197 
X-CRM114-Status: GOOD (  11.72  )
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

Hi Diederik,

On Thu, 11 Jul 2024 at 15:35, Diederik de Haas <didi.debian@cknow.org> wrote:
>
> On Thursday, 11 July 2024 11:09:48 CEST Anand Moon wrote:
> > Ok but it is better to update this in rk3588s-pinctrl.dtsi
>
> It's probably better to base your patch(es) on Heiko's 'for-next' (or 'v6.11-
> armsoc/dts64') branch as that file no longer exists there

Ok.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
