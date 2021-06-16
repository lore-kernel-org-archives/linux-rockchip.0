Return-Path: <SRS0=qhcO=LK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C5B9C48BE5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 14:06:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E7DBA6115B
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 14:06:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E7DBA6115B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UzPmQ3yzhcpg/eI5FlOFpoft3pXwYpCTccNdFE7YAGk=; b=oy/NEFL6V7sONBfOkMlQA8SOus
	TOPunTxIlaPTEvEJQPiI4Axs/feUruRSWsH0Sht5QYWT3o4LUW5HJkzdrhypIbVWNTWuCvswymMU0
	KXzDD4JUBQjNFM/aK5J3e7pdgsYHBbBQG/BJ0hDoJmUj/+MAQB8UNsC6ExpxIBJug2QW7Ycj66N1W
	lKmsVCVc1qFkEebPHBx3f8rvttO/03WDqjZBLjkSgsDPxACngO2w8LSXbIDsQkwT6hvDY4oTBOfsT
	dazpbzSqVMXLBEgm6nMRFOO4EwHiEf+N2ucd8daFa4f+KtPI4ZBmGRBnJDK8vZN/2WOVVqlDe7la7
	UxyP+Vjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltWB6-006eBN-Uq; Wed, 16 Jun 2021 14:06:01 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltWB1-006e7k-Tq; Wed, 16 Jun 2021 14:05:59 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15GE5f8W117835;
 Wed, 16 Jun 2021 09:05:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1623852341;
 bh=qJ2GnQxd+yS6ISLDIaGuRDIGnMu21lKltpoDuOcviVs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Y9lT3fiGcNzub92cli5OVPZlfJJkKpeM+luPVBsr3MFOO6ZPHHHJVpQ+nkPKYeZGc
 Oigl/gNPm6mvRw7bjJe5x+TOImMI9XtSlzgnK3dGiblZxaNItnhloXDa+TP398uVTd
 GrMY0JrzySfFxPP8q/iiHvxNcpR1bO38e/T6BowE=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15GE5fR8015784
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 16 Jun 2021 09:05:41 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 16
 Jun 2021 09:05:40 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 16 Jun 2021 09:05:40 -0500
Received: from [10.250.233.239] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15GE5XZj082268;
 Wed, 16 Jun 2021 09:05:34 -0500
Subject: Re: [PATCH v6 0/7] Add SR-IOV support in PCIe Endpoint Core
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Tom Joseph
 <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin
 <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
CC: Jonathan Corbet <corbet@lwn.net>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-renesas-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, Lokesh Vutla <lokeshvutla@ti.com>
References: <20210517074723.10212-1-kishon@ti.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <d5bcf443-a0ee-fda5-5c5c-d69d25b53bb9@ti.com>
Date: Wed, 16 Jun 2021 19:35:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210517074723.10212-1-kishon@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_070556_143297_0D5743F0 
X-CRM114-Status: GOOD (  19.26  )
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

Hi Lorenzo, Bjorn,

On 17/05/21 1:17 pm, Kishon Vijay Abraham I wrote:
> Patch series
> *) Adds support to add virtual functions to enable endpoint controller
>    which supports SR-IOV capability
> *) Add support in Cadence endpoint driver to configure virtual functions
> *) Enable pci_endpoint_test driver to create pci_device for virtual
>    functions
> 
> v1 of the patch series can be found at [1]
> v2 of the patch series can be found at [2]
> v3 of the patch series can be found at [3]
> v4 of the patch series can be found at [4]
> v5 of the patch series can be found at [5]
> 
> Here both physical functions and virtual functions use the same
> pci_endpoint_test driver and existing pcitest utility can be used
> to test virtual functions as well.
> 
> Changes from v5:
> *) Rebased to 5.13-rc1
> 
> Changes from v4:
> *) Added a fix in Cadence driver which was overwriting BAR configuration
>    of physical function.
> *) Didn't include Tom's Acked-by since Cadence driver is modified in
>    this revision.
> 
> Changes from v3:
> *) Fixed Rob's comment and added his Reviewed-by as suggested by him.
> 
> Changes from v2:
> *) Fixed DT binding documentation comment by Rob
> *) Fixed the error check in pci-epc-core.c
> 
> Changes from v1:
> *) Re-based and Re-worked to latest kernel 5.10.0-rc2+ (now has generic
>    binding for EP)
> 
> [1] -> http://lore.kernel.org/r/20191231113534.30405-1-kishon@ti.com
> [2] -> http://lore.kernel.org/r/20201112175358.2653-1-kishon@ti.com
> [3] -> https://lore.kernel.org/r/20210305050410.9201-1-kishon@ti.com
> [4] -> http://lore.kernel.org/r/20210310160943.7606-1-kishon@ti.com
> [5] -> https://lore.kernel.org/r/20210419083401.31628-1-kishon@ti.com

Can this series be merged for 5.14? It already includes Ack from Rob for
dt-binding changes and Ack from Tom for Cadence driver changes.

Thanks
Kishon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
