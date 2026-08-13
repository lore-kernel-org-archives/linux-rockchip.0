Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EFCEC5B572
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 09:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ivm6qooqsjQfFLh6iojZRnbXZzRAzZzSQkHy8ExeC9E=; b=07QbvNbPxS83bv
	mcssBX1pd6GWO1b9y/0Rsd85p756leoiSCm3VrQAHWERy00MznPIDqZ+iMcCD3AYIKxUHZ6dHaXjH
	TF2VHqPi9lcFIBdNZUyXBUm8UXYWU6SoFxSzGz/cmN/ZrJtlm+x+MuVU9dMt0XRm2jR1mQ7/zvvDt
	p8H1+ceLdRWMKUIO7IqtKN5wmX3E1U8gO9nBXOOfEf4Ygu9CTZoAKzRBLBjNmgBMkjLOBSKwxbgZ+
	A1w4i1QgkTUMUMBBFpEEF5IN4IBnqnxxfP7knElchd0/X4JEMDoELFxMWs/eLpLWZZkEY+0U6iJns
	fkpviVgAsyyUdEvgGMYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuSBt-00000000OpK-33oC;
	Thu, 13 Aug 2026 09:57:37 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuSBr-00000000OlB-08AK
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Aug 2026 09:57:36 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-47f611b3af9so222994f8f.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Aug 2026 02:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786615053; x=1787219853; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=EtA2EaJrfUAL10NvnwAbetKX7hEHz7uIdxdgCc4AGbQ=;
        b=Nqy/30nv3SIspFX+sOSfLzkKRR9QK2Mn+c9fcKoWemisQ1lTSgig/DH4yUf2oegFK4
         DyRwzZ5nuGMPKeZFtEcEGpOjaX0/ASYga3dIhKmB5g+0y0L7T4GLPyx26CuE5Lb5GZDy
         9DzE8EGs4tf+ttFr/f2bLNKkHQ+qisty0pYSGkreBw4yQ5+XZTtnY7IK97bH+wpoFQ+H
         CDlkNsI2LV8wuEd1UnIYSOwUScU+Hj5awXH2lYBbYXLbQYdq5SawCOMxAbVHaStYLYCZ
         r1areqtOwLV00FQNRsopA0GMtln8GhlIOGi7j1BoH/hZyJPXDJEIqyG8pnHh8qVB1V+v
         Hijg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786615053; x=1787219853;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EtA2EaJrfUAL10NvnwAbetKX7hEHz7uIdxdgCc4AGbQ=;
        b=fo05Mq0nBmfiKryaep+glGtOiw/9Uoazy2AawXgEdrANzdvgZ51wgTFX+T/zIl3Eu1
         AX7kqnU1USpCGV1HxdezH2tAKucKkliCQnX1d3LFHdSjL9pHha9H47irZoXSFpltI67P
         E3HSFHpXI6GblO3/GP1FCESgeviGDxU+Y+5l8YBy7mGBNvc0lSmuArEuGt0S0weI3+Dy
         0dGtbOdPktChaL65zQqBIfh8z4QKq6ybQFOtTHbTCF9SenQFWFFLv1AOvAPavyHTTue2
         IIeAtImnEvVkUnUQTgc3p8WMxZmECt3ZJuMawMuG95plQ+dfgXsLFK4dCnujK8Sshch6
         Tm4g==
X-Forwarded-Encrypted: i=1; AHgh+Rrm3hXnYknjbusCjILCKNmcDjK34S/woVmxWQi3lf+mEJpNAtRS5MGHtysxUVQ6VyEHzakQ/8Ds5Q9ivhNNXg==@lists.infradead.org
X-Gm-Message-State: AOJu0YySKv4D1U2Xs2g1tRbvKxmG1FkU+GtApY92nXngyitqO5STPGRh
	juqVXIvP6gT5JFZ41iU9RxShqRz9MP+jWuK6C1zvmY1mlisbwV2/UxDX
X-Gm-Gg: AR+sD10Fx5Il8gt1fhBm5BJnF/OjblJCvq92XL8aeYOsxttsTy8Qu26p/eAXA5O9Y7V
	in14F330AUSA15qNWgH3NmKnv0lDCagnsE/ZddXfGEk0Zsj14Ob62/7BIaDUT3go0Y283EdA9uQ
	TlNCyTGniXEA4AXemTh9BHZFCXh+IwKWjzW97Hn4gvcHa15SIKQwVxsB/tMFcFhXc5CE3OMEmkC
	NmOPsisQdBKDDMrM0bmlR+z3Uff7DRTW6weLA1u5q4Phupq7GqIy0qLzcxzCR8kPzrTqE6GxsYw
	S+9U/HCOOQC8LTrAYwTYg/u6REfGl9fMCG1klJClcndBhDgG6W0oAI4Xjo07vyNNFzBq1AW1j6Q
	EOMNJJyZQMrjAprJur4g2Zsx4xo/RxN16BtaxOG7aenB0BHp2ukLWIYwpj+Kruw0SEhJfPq9mKC
	bbTHH1C8cxIk+bp33Qxk/4PXJ1BNheYCmrdtIV1gXp3sStAg9jkmaE54j4R1dxkPkwg35EZmCLR
	mKqBbpxiLe46xKA/voQpEd1Urd9jQWIjWDkc7gwE+RIeIgqoqOwgP7TapQx5J5mw7MQFg==
X-Received: by 2002:a05:6000:41c6:b0:47f:9256:52c0 with SMTP id ffacd0b85a97d-4815ae93ab7mr2388748f8f.3.1786615053053;
        Thu, 13 Aug 2026 02:57:33 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B911C009377EE8DF6D0A1C2.dsl.pool.telekom.hu. [2001:4c4e:1b91:1c00:9377:ee8d:f6d0:a1c2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4815a5b6b9bsm4760430f8f.29.2026.08.13.02.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2026 02:57:32 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	chaoyi.chen@rock-chips.com,
	alchark@flipper.net,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 08/10] accel/rocket: add RK3576 NPU (RKNN) support
Date: Thu, 13 Aug 2026 11:56:57 +0200
Message-ID: <20260813095718.9747-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260813092656.2568538-1-gahing@gahingwoo.com>
References: <20260812094106.1391698-1-gahing@gahingwoo.com> <20260812094106.1391698-9-gahing@gahingwoo.com> <20260813092656.2568538-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_025735_293515_95D276A2 
X-CRM114-Status: GOOD (  11.52  )
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

Hi Jiaxing,

Two short things.

On synchronize_irq(): your placement is right and my question was not
thought through that far. Inside the guard it would wait for a handler
that is itself waiting for job_lock, which is a deadlock rather than a
fence. Before it, with nothing held and both callers in process
context, is the only place it works. I had the window right and the
location wrong.

I will run v8 on the three cores here when it is out, and I will drive
the reset path deliberately rather than wait for a timeout to happen on
its own, since that is the path the two changes are there for.

On MobileNet: 995 of 1001 within one count is a different kind of
number from what this series has been reporting, and it took four Mesa
faults to get there. That is worth saying out loud.

If it would help to know whether the remaining six are RK3576 specific
or common to the stack, I can run the same comparison on RK3588. I
already run MobileNet V1 through the Teflon delegate here, but my
oracle is bit-exactness across repeated runs rather than a per-output
comparison against the CPU, so it would not have noticed six outputs
being off by more than a count. Say the word and I will point it at the
CPU reference the way you did.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
