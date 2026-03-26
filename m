Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1620C109E556
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 07:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54Yx0tQ6IfptfdQfl6K3NVKoGB5U0YWIojUIdA0h3lg=; b=cUcIw8yVaqT0Qf
	ebyFJvku4O1aajORYWBSIVAqDwX0euSRV9yJ20bx6EGFmn453a8MrdRXC/nlKtB8OBMjKR0KydyTw
	+niwxXWU0LHB8eW8sjZI0XNrBVeh9GT5A6a1ZXey/3/6e4mhNsN9YdyYDTGillDpeRpdWkNn2gq4Q
	t7Tnd+rJ3g2yTRP9mmWONHUme+YnGyi59R1Q0mGKDWhhxH6VOcdEHtP2V9EiZJ7othMw1bwXgSk5q
	L1uy4Jybi+wFKFcoaDZwRBQGrke04oj0WCiUL0z2nbQBKBnUoOBCHSBXl3G9WKCObLJgsHlmuuB10
	DkanFkM9DsXk/WlXMbqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5euQ-00000004tiq-0R3g;
	Thu, 26 Mar 2026 07:13:38 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5euN-00000004tiH-1KCv
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Mar 2026 07:13:36 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-6618bc129acso836491a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2026 00:13:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774509213; cv=none;
        d=google.com; s=arc-20240605;
        b=Ax7Ik9RmsVbW5EWiKxb9rfEC4XquN5aqBQvoh5IYeAxYpyTpPahsC/+6kYDvr4wRT/
         Dhzp4D9j3hyQoUP08Tw1Ld1hFbDSue4K6UMZ7jQQPr4EPtM3Ot1AMAXH74tJe+U7Ggr4
         VwK3Az9NaLg/2I4Td3zAJFgn6ShWQ3rVXLZWehl22jqpxxNtIP0A39YgwpTpmo1X11in
         hbu2VFDXqLQWognM0LV3NhFsfhEOiYm4mwOcDCcBNxxmm5b0/1Sn5SEbKA3p3R5lf7jn
         yJDvSkSnap82zcrmMkCcxdSn3aMCeynC9fBOmkmvYecTN5HHpeSMyIEd2tjfTWBLtqQs
         CYaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/CB4TmTiZlpMhk7HNXh/AlPzX8UvAaqW5s/OKUIlyDQ=;
        fh=xigMBtYxT1IevGu0FLPU/Zbflf5VmY/oNayGEL5DiHM=;
        b=ESuk5gnm7PKqIbezfM4VSwZcIjcSjE8npEE9SLLFiz2bbbZUj9w9lFTkNdCL5P/vC7
         GnKZdTPtUNrKENlM5Qein+oaoKnStR0jvg2XajHuhm7velpull40W7SC7WkVRtzQ6V6v
         soXvtMUrs5TZCXC3giEyi22ty594tVOnVLnRuqHKtUd9OSOQA/MNfOKzzqJxXex9WYxa
         SzCvQJQBbRqizLEFBSrvfNY/AvmpnjZL7HAQqae7cULrn3PdqGh2kZ59Eoa3vPdDhPkr
         22tsnIYbKTD0HajOIy54VqLGyIXEBwpoAjCZZRSQ53iGON8vA0BNtsgZFJWzpOBRDDxO
         uHcw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774509213; x=1775114013; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/CB4TmTiZlpMhk7HNXh/AlPzX8UvAaqW5s/OKUIlyDQ=;
        b=O9oczcRDwsExcUvcVpEdJXLR/rlrxSNGpJ3EyebiZMAy98xF0untbDTdrq0EHSJIEI
         dcsRAXW9fMCLC6boKZ0m+1CkMtHzBTR1gqdQqra30Acpsr77+XTh1mE9m9uKGBGBEJb3
         cKIFyweJU1C7PJ7CZchND3s86WF3M4ElhzKmjBg4yECEeZaXk/ZVI9lz9pKTyrCFkpJz
         xMXCeFzSN7YwSLXRO0iYWq4XZMPEA2MHne+AFfOdPKLYCkOZwhKIGaRoI2XzAUHpRH7u
         Vg113MWeJC6jbNUPdErbv9f5YY7jhAhkL+7AEY2h28hQLRwUqzDK4oTKkq91toSHkqun
         mEBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774509213; x=1775114013;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/CB4TmTiZlpMhk7HNXh/AlPzX8UvAaqW5s/OKUIlyDQ=;
        b=h7Qyu1Ogs+kPgoUj1ZJyQVXgDZx0QjOwNWnp5v/etRcg2rc6+PZJsg/M2sFuRZZ25a
         +SUz75ZANchj173tNZNTzKCc61gihBaAy3PldizbmVuaqLQigcHWEwTPK/nKUP34wqr7
         Kd6u9EtTEjGZB4HCDEho8d7GhPekc/fYKiRvAb8fD0W9MwjE3gHVUAhe28MjIR2yT1b3
         4GlywGyozk1WWZrIA4oUHyQFknG7Z66vFmyl6fquERz53A97D0OlfG7reeQDxVK02keG
         kQxKyjX+sMdDqRMds0hb2shGLZCe5BHVt8B1XW3FC9Hr5Bmueb07Exna3q0wCKyuWDJh
         jYvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXw01xANi3S31V61fPpNuYjJo9YF9D1AJ2aOx1G10ufohhEqBoBBsN28kAhi1QtQRwPTeRss5gbkhX4zYbyCA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzaFpk6YAUuWDqKDa/Vwmy5XfLIHzKR7TQN8RiqpZOv4hSu4ycb
	abvo3mkbga/gK9sSHl9FAM5ls6J/xrwQel3+DM9ydigmrVxkKdwgD6/4H9rlK4wWWwmn9sHbQ9V
	Ls2dEpXUgdIsjVhjmEVoC5LqT1yQUwbc=
X-Gm-Gg: ATEYQzxwYnMQpTGVLcJPaRjX5VLTiDtiP/wq44/avYyyRKWFlZRFn4W5v626lWcX2Ja
	rhr3JgXIxtdYDhueHJ8A8b2fkoRX28kJE7UtdhbnplEXUkotjl89UHd5lde1SEWuWaOyFGddrYc
	p4FvKi3dxjtw7W09MzFBfHwqnMEd7xtJfZDh8NecHL+K/3o0PSvUYZIY6FpzDHDUT3MEorTu25D
	q/JsXHhaw+lkkNIx3RQrmEPq+7vy8XYyse1h8M3fcuPE1gM5D2WPJ+qyGD6OJmAQmif9L4mEXYS
	pV/vfrOPMZiN0I35
X-Received: by 2002:a17:907:198c:b0:b94:1d92:7eb with SMTP id
 a640c23a62f3a-b9a3f1919eemr458328466b.18.1774509212875; Thu, 26 Mar 2026
 00:13:32 -0700 (PDT)
MIME-Version: 1.0
References: <1774403912-210670-1-git-send-email-shawn.lin@rock-chips.com> <1774403912-210670-2-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1774403912-210670-2-git-send-email-shawn.lin@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 26 Mar 2026 12:43:15 +0530
X-Gm-Features: AQROBzDzOlAx1sUd2S5bjE5iJHmFf32DolWrjZ8MKJ0g213qpmInERjK8VvyQ5w
Message-ID: <CANAwSgQMy2q18Pkg7caunY2L0MwuFjugX6T4A4egSk38x3+FCQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] PCI: trace: Add PCI controller LTSSM transition tracepoint
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-trace-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	Steven Rostedt <rostedt@goodmis.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_001335_375269_68BBAF72 
X-CRM114-Status: UNSURE (   8.46  )
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

Hi Shawn,

On Wed, 25 Mar 2026 at 07:28, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> Some platforms may provide LTSSM trace functionality, recording historical
> LTSSM state transition information. This is very useful for debugging, such
> as when certain devices cannot be recognized or link broken during test.
> Implement the pci controller tracepoint for recording LTSSM and rate.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
Tested-by: Anand Moon <linux.amoon@gmail.com>

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
