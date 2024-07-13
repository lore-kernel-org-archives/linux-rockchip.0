Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89849C3DA42
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jul 2024 09:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qkPfE5T6Dq16++TwQUZDyvZbV2+jT0A3hZfPjIofDbY=; b=k7t
	BDddRz5j6ulQ7vVFJShNaV7V9fJJ7A2OVZTxa5oaa9Nd4ntirPliJvz45TmsbVZxOjYFtyy/9j5N8
	8I1ZiYTeV2MVBqKxuIb8VgwFxGGTxoyHIYOxZ0Cy+zKkOGV1R/moVvWmT4CyO8Uf6pvHodslMd4kc
	8OGJST2oM5nxJUCiLe4LYb+M7j2r4dkGomnjL4skJGBP4m11KVkJu0WV/3CmZzr1Lic2FfnRetdI9
	gDnJpzv3KkB4NE9TF6kV7dlLYX+Ry9f5ChMZ3JGxIPNzCuJAmyEv7kyiyTs7BrM/jgmrnzYmlyLed
	c4eaaWPJfsLvvcxKPKd5FmV+yA9TTCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSZ8Z-00000002GSP-11k0;
	Sat, 13 Jul 2024 09:33:51 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSZ8F-00000002GQp-3Ep0;
	Sat, 13 Jul 2024 09:33:33 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-e036105251eso2802019276.0;
        Sat, 13 Jul 2024 02:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720863209; x=1721468009; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rYn8SFrnjLRXDb9r6mZUfSndLq/6pJjRpLMlxAoFXmU=;
        b=N4K3mhQmaFu+1aTMjxQoMn/5VraTr1IHdwuNwYJ1lOZOc2a/ugmGcGtDS2eunhHAsc
         lg7Nyb4R3rqFuor8l0zIQLciZZMp1BmEhaQ2GKlCJDLVYM7JatfNF9VBoQB2akJ19/7p
         cDgcWxyTDt9ebq8Ffh3ZPL7M3C17gBPVWz0xMqOvN0EH16esdIrhKPooJh9X4j2Lt0qp
         jbSLUClQRkJh4mo1zHnUWjVA3wLb6CjRtUg7PPHjyxRvE5jKhuoNpiJDrd5p9ip0TNqS
         5XfkYUFFsNYDpjITOMtxtRov1pjJfX8FIg3H7pwB+XRwM49vqLkSk13eMTx5mSCSb2c1
         vuTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720863209; x=1721468009;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rYn8SFrnjLRXDb9r6mZUfSndLq/6pJjRpLMlxAoFXmU=;
        b=cICFw6ut4WWdkOU3q0FU98lOUmzL3+ypdzxtPd9i+V7Txx7hiQVPZRheW4/vMuZUc9
         eQSPmzq8DEhfwSXbkhucus1jNJffSc3eE8ZtYKax+dSeWZ8tueo9EJOHS5GcfweY+Ik6
         WsRXcjb160F5pI7L7R3MCh0ZXxMhLRfdLvBuJxTQL37iMTNhMzcXCtZb1Sxcs4TKIxCG
         I9VtCChgsUlGVzu4UCDCPKt3ittm7CaiQDv5geXahkQDNo9ZYnX2NBFLNHx45+pveJeL
         c7lanIRjJfuDmJEG/6fplrWKNAfPUIHWlTkN8o1RrpGajBtgzLi/hQRagoBRcpOLUQgC
         IKNA==
X-Forwarded-Encrypted: i=1; AJvYcCXL40kmt9Pi3vvaiBjR49/X6AGMQZ6tJWRF4thOoeSkgofiev0D3xOlJaEuVrAZ5faMq+jpgZdig7cweXq+cTIfIXiIKDEMuNJYd+xuae+7sJfV
X-Gm-Message-State: AOJu0Yzi3OZ4gaGL5F8rtB10vXi/AF3hqFz5IwV7s7Dzg/TIQA3WiuYb
	hH5W03ZzodfsrnURvtjHqob54d+PBUAvSkdudje/0ApVRJpbBj/2/PsYiJNxkSp53ULSmx7oqXQ
	HFiCtYX+zJ97dKRC91XyxHRs9XMH2aBxJ+oU=
X-Google-Smtp-Source: AGHT+IEdwZpvzdtLOr6t/zutwzDnKaUI+MW/QjUWE8RI7Cr05rtWjE5Mrs7ajby+mScyziZDSoAUILmPkGfuvIwav5w=
X-Received: by 2002:a05:690c:3385:b0:62f:2553:d3b3 with SMTP id
 00721157ae682-658ef3414eemr189651607b3.29.1720863208911; Sat, 13 Jul 2024
 02:33:28 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Martin <dmanlfc@gmail.com>
Date: Sat, 13 Jul 2024 19:33:17 +1000
Message-ID: <CAOyTmd0Hk5jrvY4DwGO6jYkWWZCmRyF9WNxV=r867Ut-mh2G=g@mail.gmail.com>
Subject: Anbernic RGXX3 devices with later mainline kernels don't boot
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240713_023331_847618_B1B9A431 
X-CRM114-Status: UNSURE (   7.41  )
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

Hi,

I'm just putting this out there to see if this is known or has been
tested recently.
I have 3 test Anbernic devices based on the RK3566 and all are failing
to start if I use the mainline U-Boot (2024.07) & Kernel (6.9.8).

Devices tested: RG353P, RG503 & RG353V

Issues seen:

Mainline kernel & u-boot = no start or boots to embedded Android
Previous kernel (6.4.16) & mainline u-boot = as above
Mainline kernel (6.6 or 6.9) & supplied u-boot = failing to start kernel.

Working:

Previous mainline kernel 6.4.x & previously supplied u-boot.

Note: The mainline u-boot is written to the 32k offset.
          rk3566_ddr_1056MHz_v1.21.bin & rk3568_bl31_v1.44.elf used for u-boot.

Sorry I don't have any UART output as I don't have an appropriate
screw head to get into these devices and try to wire one up.

Has testing been done recently on these devices as per above?

Kind Regards,

Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
