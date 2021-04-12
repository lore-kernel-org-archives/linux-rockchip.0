Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9F1C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:50:37 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4DD96121F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:50:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B4DD96121F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8TIGe5EK/R3CTSjcSUCalHogYlZjkUgAEgONXxQOCOg=; b=Xnn+xeWlqQb7qIYrSlOhC7SFwR
	JsXmumjFIKMAW0GIdKkgdw+US/xtNC8M5DOpfuq3wZWEDUrjjtXkwhDoAn0WoY0ndKpgDm1wT77EO
	b/mNdK3hkf3TVo/Sbdi48eOJmD6p36iG6fVc3DsVGCxEXBmiTqCI81/nddbRYctL4eSbGjTY7TkFZ
	AvOVTNg0qf1wPfUbP6fDHRfIJWkbHwpuN9Bk4rjN3xmXKjuqWooTTj7zpmhgJc0sDGVaolucaiIvF
	W0H+I+TPUGrlaoxHh1f3ll6BRtz00uiYu4LRLKGGr2DXbQwe5ks1GLk4fYSGk6bk1oVGHvMQLD9wp
	TZFT2wbQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW3Vo-007f5X-P5; Mon, 12 Apr 2021 20:50:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW3Ve-007f4D-ER
 for linux-rockchip@desiato.infradead.org; Mon, 12 Apr 2021 20:50:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=obDs/XpxWEky4e66MRh3RwGDUsnC0qd3Ri4kxaTuKVM=; b=grZaSd/IaTdW7FFjwPpbdFiJdy
 iuzA53NjrUJ/b0xDjwWX4g1LwMhdCwf/UuhxLuQxNAYb5l8GPm5A8FQLGtRPi1qFNM8nvPGEhxVzi
 Ja5Cqx0+kvq8oV87OAjp+1QBLPoMJE0kjmEjKLg+pWXoHtWMOPJClZlOcqW2LhZ2KcMDzoQLDfjdF
 QikA/YHraybAjLqXLHI+Cqb9zgKBF/raHODmAn4TV2ae5Lodbmh1i3HIsFpzU2UWjX74W5cT7MU6w
 aCr0/uffO5bXiRorD7Zv1aw3lYEQaCG1u7lqr5mC140S1qmMKEzC5XHcCh1Oby7GMPrMue0hTuqXk
 ZqqDa3wQ==;
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW3Vb-006Y2O-DD
 for linux-rockchip@lists.infradead.org; Mon, 12 Apr 2021 20:50:12 +0000
Received: by mail-qk1-x72c.google.com with SMTP id c123so10909794qke.1
 for <linux-rockchip@lists.infradead.org>; Mon, 12 Apr 2021 13:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=obDs/XpxWEky4e66MRh3RwGDUsnC0qd3Ri4kxaTuKVM=;
 b=b4jBGfBgoCqAPMTDGTMJhhJRJnpch/jGiLcO6hBxq+SYk/nb+hEcnTpZsT8MFXMaWU
 Fl5GNO0aghy5wRC6TxaqcjWO3wyhgXKPYADbOwr0BWyybazAIKBnHdBvN7mEI3oERCLO
 q2/1YtzQrwFFlwYeHDeu8MwIkiqxOX/2KZHafjHZLVUvRy4Jw+BLiFqAXYxJEu5ht44L
 XswawYxlQ/UtyMldBl2rtt389f2oWy/GzZTowQJJfcdYlccYIzxBkhS0aKmHWi8p0BJV
 ribe78YGuT22I//7j6pyXjzfrEIilUwLGgcJaRbq52IqYCjNfm2VOduSesFeQ0FcFlJF
 a6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=obDs/XpxWEky4e66MRh3RwGDUsnC0qd3Ri4kxaTuKVM=;
 b=Uijj+LSY+wGZsYq4u7fFsH1VCxlhpL3J+P3I/C0ZqrkQ0jrDBC+I2DaBpQwYcg6p2J
 OsbtUT+hZI1EZNMJpoJR92Fg0FKb3yCcy/svHKLtBWxlgycaCdU+twVsh1U8eIVX4xyh
 hqeEhmYV2UGcnrSeX9CLHCa3W/TECdrMoF7nC1w4/sJXWqJuxhtIhO4zDycqzjmn/Pl/
 h+alOlri0VM4xj8sNT+eonMlqN858DSuhLdnwtk+PVZ2fc/EW78av1DFLFhbV7fU/Lyj
 +ia5vPrv+qbRRfQPwjIv1ZoGam+VWHE0PON7fciK+s6zDHyl6sgWBLJuvBQ9Ba3BeTJN
 Ci1A==
X-Gm-Message-State: AOAM533nyMUp5RsXtGxH/NCFhZdmZ7b8ar6O5g+u30RPLPQfb74E9Xw1
 P6j7vQVPcE5PGscih8IRcPPj//NKrjc/EplUXXc=
X-Google-Smtp-Source: ABdhPJzOXOyeVgHecXY+yYdUMmZi1Kh2SAby+9mebJ7RaTmJRac6fpN0YXMxCQgkQAEYbBE515q2O1tZ088euwgZHdc=
X-Received: by 2002:a05:620a:20ca:: with SMTP id
 f10mr22371359qka.426.1618260610049; 
 Mon, 12 Apr 2021 13:50:10 -0700 (PDT)
MIME-Version: 1.0
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 12 Apr 2021 16:49:59 -0400
Message-ID: <CAMdYzYrQ5f-mv_VmTq_CRf9tR=j3mwRpKHNLmPFgCF9whsGFRw@mail.gmail.com>
Subject: [RFC] ITS fails to allocate on rk3568/rk3566
To: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_135011_488067_906FB4D3 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
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

Good Afternoon,

I am assisting with early bringup of the rk3566 based quartz64
development board for mainline linux.
I've encountered a few issues with allocating ITS on their version of
the GIC-V3.
The first issue is the ITS controller can only use 32bit addresses.
This leads to the following error:
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 320 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] Root IRQ handler: gic_handle_irq
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000fd460000
[    0.000000] ITS [mem 0xfd440000-0xfd45ffff]
[    0.000000] ITS@0x00000000fd440000: Devices doesn't stick:
f907000100190600 f907000000190600
[    0.000000] ITS@0x00000000fd440000: failed probing (-6)
[    0.000000] ITS: No ITS available, not enabling LPIs

Downstream fixed this by adding the GFP_DMA32 flag to the memory allocations.
They also force clear the GITS_BASER_SHAREABILITY_MASK.
Unfortunately while this allowed ITS to allocate on downstream, as
soon as MSIs attempted to use it all interrupts would time out.

On upstream, we observe this during allocation:
[    0.000000] ITS [mem 0xfd440000-0xfd45ffff]
[    0.000000] ITS@0x00000000fd440000: allocated 8192 Devices @3810000
(indirect, esz 8, psz 64K, shr 1)
[    0.000000] ITS@0x00000000fd440000: allocated 32768 Interrupt
Collections @3820000 (flat, esz 2, psz 64K, shr 1)
[    0.000000] GICv3: using LPI property table @0x0000000003830000
[    0.000000] GICv3: CPU0: using allocated LPI pending table
@0x0000000003840000
[    0.000000] ITS queue timeout (64 1)
[    0.000000] ITS cmd its_build_mapc_cmd failed
[    0.000000] ITS queue timeout (96 1)
[    0.000000] ITS cmd its_build_invall_cmd failed
<snip>
[    0.150282] Platform MSI: interrupt-controller@fd440000 domain created
[    0.152409] PCI/MSI:
/interrupt-controller@fd400000/interrupt-controller@fd440000 domain
created
[    0.156158] EFI services will not be available.
[    0.161168] smp: Bringing up secondary CPUs ...
[    0.170252] Detected VIPT I-cache on CPU1
[    0.170325] GICv3: CPU1: found redistributor 100 region 0:0x00000000fd480000
[    0.170356] GICv3: GIC_READ_PMR old_pmr=0xf0
[    0.170371] GICv3: GIC_READ_PMR new_pmr=0x0
[    0.170393] GICv3: CPU1: using allocated LPI pending table
@0x0000000003850000
[    1.686709] ITS queue timeout (160 1)
[    1.686733] ITS cmd its_build_mapc_cmd failed
[    3.202979] ITS queue timeout (192 1)
[    3.202999] ITS cmd its_build_invall_cmd failed
[    3.203157] CPU1: Booted secondary processor 0x0000000100 [0x412fd050]
[    3.208303] Callback from call_rcu_tasks_rude() invoked.
[    3.228487] Detected VIPT I-cache on CPU2
[    3.228559] GICv3: CPU2: found redistributor 200 region 0:0x00000000fd4a0000
[    3.228590] GICv3: GIC_READ_PMR old_pmr=0xf0
[    3.228606] GICv3: GIC_READ_PMR new_pmr=0x0
[    3.228630] GICv3: CPU2: using allocated LPI pending table
@0x0000000003860000
[    4.744675] ITS queue timeout (256 1)
[    4.744698] ITS cmd its_build_mapc_cmd failed
[    6.260797] ITS queue timeout (288 1)
[    6.260816] ITS cmd its_build_invall_cmd failed
[    6.260948] CPU2: Booted secondary processor 0x0000000200 [0x412fd050]
[    6.269204] Callback from call_rcu_tasks() invoked.
[    6.278358] Detected VIPT I-cache on CPU3
[    6.278430] GICv3: CPU3: found redistributor 300 region 0:0x00000000fd4c0000
[    6.278460] GICv3: GIC_READ_PMR old_pmr=0xf0
[    6.278476] GICv3: GIC_READ_PMR new_pmr=0x0
[    6.278501] GICv3: CPU3: using allocated LPI pending table
@0x0000000003870000
[    7.794367] ITS queue timeout (352 1)
[    7.794390] ITS cmd its_build_mapc_cmd failed
[    9.310219] ITS queue timeout (384 1)
[    9.310237] ITS cmd its_build_invall_cmd failed
[    9.310368] CPU3: Booted secondary processor 0x0000000300 [0x412fd050]
[    9.311925] smp: Brought up 1 node, 4 CPUs
[    9.318831] SMP: Total of 4 processors activated.

Also, when MSIs activate the same timeouts seen downstream happen:
[   13.884698] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
[   13.886476] pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
[   13.887466] pcieport 0000:00:00.0: assign IRQ: got 0
[   15.414727] ITS queue timeout (416 1)
[   15.415476] ITS cmd its_build_mapd_cmd failed
[   16.957519] ITS queue timeout (480 1)
[   16.958040] ITS cmd its_build_mapti_cmd failed
[   18.482251] ITS queue timeout (544 1)
[   18.482762] ITS cmd its_build_mapti_cmd failed
<snip>
[   70.267783] ITS queue timeout (2656 1)
[   70.268363] ITS cmd its_build_inv_cmd failed
[   70.269782] pcieport 0000:00:00.0: PME: Signaling with IRQ 64

Any assistance you can provide would be greatly appreciated.

Very Respectfully,
Peter Geis

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
