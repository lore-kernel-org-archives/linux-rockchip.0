Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFEDFCD4F5B
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 May 2026 16:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XVTK375QmM0QDFm+59mU8dosk09WbnOQUMvIITyQzMw=; b=fBL
	BEW5HEA6IYGvew7Je6XpWF+BUJwYKiZIHL1K8egk0GAJujQEO21HolMHIdj3coa+ao68KAOgxNApd
	PoMB+v/oQ4LTXCA0kSGPd1G084/LXj5iNFYEpj2lC70iIWUGPt+RfxhyfeYOlQWi07LL5NiJQBWrN
	DUZYR2ZUrl8WRxQiQT/0zG2N2k6e4/DNwfY7xWpXBgr8MQ3uig9N8Ouq94BkWATATULiZ61JI9109
	FYX9qFPWe7mYFphRtA8e8jAK22BAsEVg/EmNaDVUx7hUyabQAOqTjWOnVvu0hCMZpfzAFuYRNVtvo
	96Ahsjx+//t/mGxrrmtbojwNrAlv8Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPNMI-00000002Eyg-1sEx;
	Tue, 19 May 2026 16:31:54 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPNMF-00000002Ey3-3SL7
	for linux-rockchip@lists.infradead.org;
	Tue, 19 May 2026 16:31:52 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5a40b2bc96dso4345763e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 19 May 2026 09:31:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779208309; cv=none;
        d=google.com; s=arc-20240605;
        b=Ok++kRQRM6kCNVDP5QQ7332gxkn8PRW8AnDvVuNPyGn0jvaMXH2/vcrD3igY8pz60N
         lnciIaBgoVhT5fdPbwls7AN3Pqa2Ag/WFK3DV/dbCXCovxeJwg4K78rU/dtr5z2GkEb/
         qVOgDANrEU4hWUVW7s5sFoJmk3olec5jZc5RlQvsEEa1AjPXZbTKpSXBn/o+/Axcz7qK
         RFeuTl+kW/12Ci+/asg+x/EbEfHnr9mTipnIsU6BQzNZK1L1hTF+XilBPWykf9L5ANhP
         lrYeN4O5G3jcN2DlbYyZngL7A3L4p3XzKQZW/mZlsX47sWVrn4jvwC8VRMyDUQH8XmkP
         Sf1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=QTg7JgGIxQLMP4ZPAhWo1/fqG6qcheAHlD4dU1oo5SA=;
        fh=+S59iss1khD7Phgpxaw6TfzdkZnYoHq76HDPsYgQzeQ=;
        b=gu+1bcGI5eK0ZY+qcF7/Ot9bP4gecFIF/vyyQSRqrsEe2+F9+isK1VB9yneD0FP1hM
         sUPV0CVaacvGWoGCsVTMKnC3PCD4vGl8GYMrlHUX6xQKcngc1zn/xO6+H8NYQ1y8pEbE
         r/PrYE6s2TbbuksiPsvWTkOzmwIwLeTTp9s3j+dcWnClI9eZI+tMYLro3RiPs4fnWXlW
         cocS7TSppVpbxETgniMvriKEcGjdsbwkXVXtnAxOOFOdPDwvqPq3KDUMeuGLDJfzsdOP
         aiCRLxXaW8sdmEd+9EM+mx0xgKpL3iNT5JlPJPNgfCdHLAcl8IiYuG6qmetQb0WveRu3
         kShw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779208309; x=1779813109; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QTg7JgGIxQLMP4ZPAhWo1/fqG6qcheAHlD4dU1oo5SA=;
        b=iLvAgd5+HayyiD+qdHu0JTlJ9f71HCpj0VxzzABGFrFqm5N/VrSQmf+jVBZYNqqKl7
         q/WJYDrfXOwIQrM52DjmBABWYiM4M/RvGHrqvmibgknWD1zG/Sqx6wXaAei7h9PGLCEk
         V9fHSL9k+UjmfSa1pxnrAt6f3NUpzZwR39sG8FRlsrLMTR53POyqUA9jgU2QQyTtPihT
         SlNzGiaAzFKPH5f1K3wET75vqiD2FtDWG/wztZ4BatExNol8JEcsS0dV8Uj7KZ90/dXF
         Fg164KiURSzH56C59EHQV1m9guOG9j0OcdeMEkSQYlDooycWolSgWwj/yn7yss3mji92
         XZqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779208309; x=1779813109;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QTg7JgGIxQLMP4ZPAhWo1/fqG6qcheAHlD4dU1oo5SA=;
        b=MsUCJxmzIJ3V10nvTBxxV+9vpRI8FZ1FuZi805B4xfxote0haVA/iYrxMRo+hjp89u
         VKzos14sXQqZzX4x1OP94Knd+JEdkZz6wQ8OlevxhSwAYK3Zb8QJObLmtfNOxw0ELDBk
         L1L+VetY9IJHGyfTiIlIK57EeMzldWdTg+5m/khXP5OY32/PYva4AZ+rHIrg+4L4RY6N
         Knt2xFKG09Rf8U8JUk1jQCpnju/nnmcTYiPyqKztMXZYsxQu0qPGpsiOP+OUI3hSehjO
         N218vBAkHF5oKu320KONYydUxAQEk8UFJBdlsSD6frWb/SbR0m66M+pgXhwUK1NAEldY
         7izw==
X-Gm-Message-State: AOJu0Yz9GV4B9wAtstha+ZzTa3/mXx822Ag57a0X5NrJgtz+VBrWZIH+
	WQe4CKDzxVKNEKiaiLPftrtWiO2XTQtmkngJTxBF770KXCtAtiwBGwY9ivi1UdI1qOUq5e3eeZj
	2HzPwyW8AhvKGJzNs24CvJzYMHGpnrwVQc2K9w89v4g==
X-Gm-Gg: Acq92OEK4TeoXpm5XtyQYamQC3arSXcIbt4Euw43CqelcL9MivH3tUhwFKxmpaoeuZQ
	Mi8Y+hT0H78WCLOnM3MTfsE1LNFWI/NMPr0OV3vi+zIhwG3JTWr3ju4zxnRXUBdIwTK2tyC6MH3
	kC56VlRuC+0ecGBdKqG+aUcLGErO8bjlCHM9FY21gNpQ3V9lWsu+8EFm2/G/8TYlumKHakGpehQ
	n2ighnL4A3htMvaJuS38Evu0cFkIqk+wEXJPn2YYDZoEDXRjUR2m0Ildkt+7xfJa1Kknk02vC4r
	xqF0YykcUsViOvfdGN9/908Mssaa3K5funHyz0Szbg==
X-Received: by 2002:a05:6512:1452:10b0:5aa:f41:328d with SMTP id
 2adb3069b0e04-5aa0f41334bmr3767057e87.10.1779208308910; Tue, 19 May 2026
 09:31:48 -0700 (PDT)
MIME-Version: 1.0
From: "Owen O'Hehir" <electronicconsult1@gmail.com>
Date: Tue, 19 May 2026 17:31:36 +0100
X-Gm-Features: AVHnY4LLJmo5i9LvflCHJe5r9HKf4HZu46YAxNUv7JO4dAN8yx9OkrLilmH9xWw
Message-ID: <CAGUWaEEp5H6XjDG6oOn-ZexYFnN=nXfh4yNTN+eV2MXXzp2RKQ@mail.gmail.com>
Subject: OP-TEE on the RK3506B: what enables FW_DDR (0xff5f0000) region
 enforcement from the secure monitor?
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_093151_882540_85BA0A42 
X-CRM114-Status: UNSURE (   8.85  )
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

Hello all,

I've been working on replacing the closed `rk3506_tee` blob on an
RK3506B (Luckfox Lyra
Ultra) with an upstream from-source OP-TEE build. I've made decent
progress but one part that I'm stuck on is DDR firewall (FW_DDR, base
`0xff5f0000`) locking the secure DRAM region against the non-secure
CPU master. So far I can:

- program the region-map + CON + per-master (MST) registers and can
read them back,
- reproduce the exact register/value/ordering sequence that the vendor
secure firmware uses.

I've verified
- With the same idbloader/SPL (mainline-style U-Boot  `arch_cpu_init`,
which only does the MST grants), the vendor TEE enforces but my OP-TEE
does not, NS still reads/writes the region.
- The SGRF slave-security set is identical between the two.

So there appears to be a precondition outside the FW_DDR register
block that is set by the vendor secure firmware's broader init that
makes region checks actually apply to the A7 NS master.

I see the initial work to introduce the RK3506 was by Jonas Karlman
but without implementing secure world. If anyone has any pointers to
the FW_DDR register summary or how to set this would be gratefully
appreciated!

Regards,

Owen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
