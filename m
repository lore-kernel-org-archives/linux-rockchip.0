Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE45CC7618A
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 17:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oR3lxLUB1nTv5T2k0Jvop1xE+H4rrwXpoEqpIB8+gBw=; b=Z26
	fcccpSpQ7/eh3T0K7ii51ne9+hkJ1q1UmhZKtvyFtmKzxrxkhoVzUjDCcA0Gk3Hnw6UEvWQiIUea9
	8ciVwzFUo7AF0sPYELDWSEBrzX6g4mTJ3FTG51r2R2NBEcFeSGQLvPvhmIBAHtbTzrbBpoUGOjj9N
	oelfzkVdFscPwPVWGSXa7+uVQnUEQAoTlWeOCyDu3oeQTmTS24dL930VbvERz9GbVsRj4KVyDvzcx
	AEBIwMD9O9OlB0cbsdgbma7GoOFTGSe3sq0xHZxW4/La0OKFP+VuoDltuc16zcdR2kzCiRxaFsQd2
	2LSrALi7h7Lm3RMNsJvqIcqhLmJqIyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peJGd-009ykg-16;
	Mon, 20 Mar 2023 17:25:55 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peJGa-009yjw-2u
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Mar 2023 17:25:54 +0000
Received: by mail-wm1-x32f.google.com with SMTP id w11so7000524wmo.2
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Mar 2023 10:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679333145;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gNmkCzJZkkv5eOsnKFRe3ayPoUnRqKfsx+CXhmbKgsc=;
        b=aMAhIpaycXv8EPhlZNCvVIlHOP3g8tB/CPSQDobIFEh1LFu1YJNfh/VdwmcuLFNUFP
         9/odcLimBrXIW1ASkqV0tgE1S5ULxgGxlaVOwafLdaaX1SSMkzkWaynKfRgXn00T5W0X
         mMp2Ykh+R0OXL9qTCaoiY8p29OAKrh+/4pMnST7PS9ZtFaXG8U2qg6bwV/Mpaa1KHJQx
         AtmPh7GMttjBTXCChxKQ0cJrfUVLEwg+kMfORg/QwfvJ9xBu8xM43QFOpiLOLOixzeLm
         NUdgdwqFZZNJ9gig3Dq0PSp+OUad5Qkd+Wjb2ouMQes1YtIdeh6Vwpar1M2jpDUHCPs9
         2Q4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679333145;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gNmkCzJZkkv5eOsnKFRe3ayPoUnRqKfsx+CXhmbKgsc=;
        b=Q3/7pgGrx3tN/+wEtJlfkUYlgmeNQqRsKHYt40wTx3MXLPgzpFyuYxCF3ndMgijlIv
         O6991rIn495A28GM3KgTUu4eYqcLp4AA64JzysFBEmZnWlbI4NiiF+6LwzDo/Mn/Guc5
         tHK1SrLVX88ug0gfJOR5hKxzX5svT3gZaKD/Haa9/RVwhMFK4tBPewoqF7uh1305en1z
         uobCfogK0OFSPRyjjcKmEd+Pw/orHqagtWx0wis/NIYmrtK+DG0k0Md9o8qGSlAdzL5S
         ldTSp45dpTDiJ6ys7x47h23z2Z1WlWgA5dEFzZxcMXVWGqb8RNlMsxhCpyNxL2nfOtK7
         nJ6g==
X-Gm-Message-State: AO0yUKVg7hwwNDLJQVzf/Vo49Pj4t13zqezNunlGV6Wsc5VDR3rvEZPQ
	XcjhQ/U3hlC17wi5ADWktnVUNeRWTBrFHRccal6VpFNmua5jw2Zx
X-Google-Smtp-Source: AK7set9XA7AYKqq/B7T2mT/zyJ4DhkrotEMXa637CqBXiJSW0WVqyKK5arGq5u1wVs3MNoN9G/snOEwf7UHckOYWzOg=
X-Received: by 2002:a7b:c409:0:b0:3ea:8ed9:5f3e with SMTP id
 k9-20020a7bc409000000b003ea8ed95f3emr76319wmi.4.1679333145280; Mon, 20 Mar
 2023 10:25:45 -0700 (PDT)
MIME-Version: 1.0
From: Shane Francis <bigbeeshane@gmail.com>
Date: Mon, 20 Mar 2023 17:25:34 +0000
Message-ID: <CABnpCuAXrbfRNpvESJiGn4fyzK5-zUcqbs7bQQJY=JhTN-w=YA@mail.gmail.com>
Subject: ARM : RK3588S : NET / Ethernet: Not TX traffic from mdio1
To: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	"heiko@sntech.de" <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_102552_960077_AFE69947 
X-CRM114-Status: UNSURE (   7.97  )
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

I am currently working on enabling a RK3588S SBC (NanoPi R6S) within
mainline Linux

However I am hitting an issue with the mdio attached RTL8211F, the
device initializes correctly
but there seems to be no TX traffic sent from the RTL8211F (confirmed
with TCPDUMP on an attached router)

RX traffic is working as expected (see below)

===============================================
listening on eth0, link-type EN10MB (Ethernet), snapshot length 262144 bytes
00:03:34.282286 ARP, Request who-has 192.168.1.229 tell 192.168.1.154, length 46
00:03:35.648448 ARP, Reply 192.168.1.234 is-at 1c:53:f9:1a:ba:3a (oui
Unknown), length 46
00:03:43.220916 ARP, Request who-has 192.168.1.226 tell 192.168.1.218, length 46
===============================================

I have noticed that the TX irqs seem to be fewer than expected (and
some eee wake errors are seen)
===============================================

     tx_pkt_n: 218
     rx_pkt_n: 1014
     normal_irq_n: 944
     rx_normal_irq_n: 936
     napi_poll: 3044
     tx_normal_irq_n: 8
...
     irq_tx_path_in_lpi_mode_n: 49
     irq_tx_path_exit_lpi_mode_n: 49
     irq_rx_path_in_lpi_mode_n: 2
     irq_rx_path_exit_lpi_mode_n: 2
     phy_eee_wakeup_error_n: 1
==============================================

I have validated that the TX are RX delays for both the phy and gmac
match what the OEM kernels are setting.

This behavior is seen on both 6.1 and latest RC

I am looking for any information on if this behavior can be seen on
other RK3588S devices using the RTL8211F and pointers on where to look
next.

Thanks in advance.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
