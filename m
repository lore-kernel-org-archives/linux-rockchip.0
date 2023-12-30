Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE4A5C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 10:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4aLQCRsDWT2ZGqWb/RCTHW1npyKNQmBkjABH+SG9nP8=; b=AIlfBwWi0Rp70g
	kwtw7qX+xoi9RtZE8Cv7mf/w5RjdPx8kuNUGJQnWUAGGycht0c+Ut/I8kNq5oJ9hj0kbTdcNavub7
	ksBggsUpe7vwfHSceY/ibjrdkcWaDzfyCoqqTLTDK2NEK3i70FCF4jUjPt3Y0vNE6vVv3C4kK/Ohx
	QmxRJ7VRtD4UPOHgxA2i5or5N3kHZvpDdxFbIy2ofpOaP/orIf06N3eciUt3J93hNuZRRptCSNBA1
	7lvHfb+11y7E8qJb8FMHonpIBhswEyF9agXvawQZprRj5Fq4nTrJdx/JoeQjxtDAN3ZaeOoIEDYdI
	tqC6o/+sOWLhyPzUnwlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJWIl-002W3k-2N;
	Sat, 30 Dec 2023 10:10:43 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJWIi-002W2r-1F;
	Sat, 30 Dec 2023 10:10:41 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1d4a980fdedso2196135ad.1;
        Sat, 30 Dec 2023 02:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703931039; x=1704535839; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GUwoHcWCWeNwaua/GlD5vIC8+pco3z2IDUy7BqEvQuc=;
        b=QG/+ecnz7rP6zbbefQAa0TQP7Dl3LXO1RLn3bQbViTItGJgIbOFuXLX2xl/PKoPtMO
         FjZlgskftVFP3s9EXisE9TeBOpGAjdmXh/02yUnil11gsQkblhcDzVLdWitt8RKilbyS
         FzcpNCBlZR5GKoiYjC6xOWWD0xthkWpcXozsUZLNn7dbehJajqKqzV4DJTkG6VQdZH+W
         uREvjM8J4TJihr6VhROc8H2fZz5K+H+hgnV2ZY+kPB82I6qRr9uHoYPxF73YBzSiFCbj
         nmj2F+u/EKNgeU5pfn8c/jpVnEmKekbQwfBA5ctVobBIQCAKZpUHJolnC32K/xHdgWhn
         QlFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703931039; x=1704535839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GUwoHcWCWeNwaua/GlD5vIC8+pco3z2IDUy7BqEvQuc=;
        b=BFk2tOCmH4Lcr7OBbmgzfjofP44IZ8w7z8OYhSbJ69XdwM9gPro70KsaXx0hbHJufr
         SRubRf2Tk2umDbsTKkc1iXg3FT8dkTJllxs6lFCtxHzCuEQkwNj17cVlawqDm3Dh/kV8
         xEzoaNyDnTft5KIv/X6tIIXmVAxA0NLyTNZ/pkwuR/raoTQJm7QJZ9RnonB4NcLHzD10
         871jpoKiIUAAr+GKyH8c86SxvwGudlvDV6j2QqUZzZtAUIegpeN223XYDdHAznBvLPxv
         XQUzWdp4FIAaDjNDb5XgREcb2ez5co+zTHOOpxispJz2tm+pCJJgtX2c0Js9nXS/UctS
         qd6w==
X-Gm-Message-State: AOJu0Ywtw9vR+2CJxka/vL62YavA2OiWfAHVwwALa5pyfiN3vc0q3X8L
	jtQbdjkh0yZMbgGZnauy2+I=
X-Google-Smtp-Source: AGHT+IG6AQ7NkttmEt+vKSAtKtO4REhFtyapg0WY7cxINl846hNcIzMUUlHk84tKE6tmQ3nMDwZbFA==
X-Received: by 2002:a17:902:e549:b0:1d4:48ab:a83 with SMTP id n9-20020a170902e54900b001d448ab0a83mr10017701plf.71.1703931039106;
        Sat, 30 Dec 2023 02:10:39 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:23b7:4d83:3222:c5dd])
        by smtp.gmail.com with ESMTPSA id u1-20020a17090282c100b001c71ec1866fsm9751639plz.258.2023.12.30.02.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Dec 2023 02:10:35 -0800 (PST)
From: amazingfate <liujianfeng1994@gmail.com>
To: knaerzche@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sfr@canb.auug.org.au
Subject: Re: [PATCH v2 0/3] Add hantro g1 video decoder support for RK3588
Date: Sat, 30 Dec 2023 18:09:30 +0800
Message-Id: <20231230100930.3740439-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <35df6456-2bc2-415d-bc61-09e4b440e2ac@gmail.com>
References: <35df6456-2bc2-415d-bc61-09e4b440e2ac@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_021040_449474_275F20D1 
X-CRM114-Status: UNSURE (   8.95  )
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

>On Sat, 30 Dec 2023 10:46:42 +0100, Alex Bee <knaerzche@gmail.com> wrote:
>if the RK3568 and RK3588 variants match, patch [1/3] is not necessary. Just
>document a additional compatible in a similar way it's being done for
>rk3188/rk3066 or rk3228/rk3399.
>If there are ever differences we don't know about yet, a additional variant
>can still be added in the driver.

Hi Alex,
I did try to not touching hantro driver code and just enabling the node in
devicetree by a compatible property like:
compatible = "rockchip,rk3588-vpu", "rockchip,rk3568-vpu";
but the hantro g1 node is not binded by hantro driver. I guess that is
because hantro driver is already binded to the hantro av1 vpu on rk3588,
so I added patch[1/3] to make it work.

Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
