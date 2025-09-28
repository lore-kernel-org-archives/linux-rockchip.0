Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44A8DCAC5B5
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Sep 2025 09:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkVxvqY47BVfvtfrfxhiRV0lcWag2/777S8SX2eA3Co=; b=wQlg0YVYQ9ey4i
	V55xi2sVzS3FSyUmO14FZXVATShUGJ8t92Ix1HuGXMMTcsyIdpr3JOK3Zx77TbQakNtGoZ1tyvUic
	w5q5R7UX5wJUsK7tcik0kn+DAM54C1eg0BH5lvm4PrulNV0b8/jLRPnEiCseTcBkAiSXDRn7+d7Rr
	Y//96JNZVPmfXhZzO64+H2KpEtkTNvX9rAPsawrfj2wQ3e52OsXbOjA/W6yeR8V5ZVauMz1ktkHs6
	9ojE72LEnUODPXW9dai3KuonZwfhOD2I4Dsu4pFW5+eYznzvkVmHnOqgQ8s3HMGgKbfuUo+R+O0OU
	xJxj6VGwXtsKCdtviffQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2o5M-0000000Emmq-0QW9;
	Sun, 28 Sep 2025 09:52:52 +0000
Received: from mail-m3299.qiye.163.com ([220.197.32.99])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2o5J-0000000EmiW-1x0R;
	Sun, 28 Sep 2025 09:52:50 +0000
Received: from [172.16.12.153] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2455d07b1;
	Sun, 28 Sep 2025 17:52:36 +0800 (GMT+08:00)
Message-ID: <ede70598-c451-4352-ab3e-0e278ce33ad7@rock-chips.com>
Date: Sun, 28 Sep 2025 17:52:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/7] drm/rockchip: cdn-dp: Add multiple bridges to
 support PHY port selection
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-6-kernel@airkyi.com>
 <idyrlzhd5sotg3ylr7vbwmczimglffc75nafxbnhhm3ot2jn4w@ixerm6elfmre>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <idyrlzhd5sotg3ylr7vbwmczimglffc75nafxbnhhm3ot2jn4w@ixerm6elfmre>
X-HM-Tid: 0a998fbd11a503abkunma2c1ce0f943b8a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhlLGlZNSk0YGE9JTx5PGkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=fkmaC9JhLsx9ypREA2gyK2saMIt0xQXv11bYSJmDDFFpI7xmfpCJWCu/QwNzs8iObZJwhYNAOBXT0AKdgryMB/HWPPuwHP4cE9dr6FPYq6oyYCBt+9FMdhF+19j6+JMmlgQdJWNrnY2U734Idzqo3Sisf0O1F72QkVhyE4zITHI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=r6bywD2WUzTYm4ELUvERid8tPQSU5/IWu32J6FLL1ok=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_025249_676943_0F27A89C 
X-CRM114-Status: GOOD (  12.00  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 9/23/2025 9:50 AM, Dmitry Baryshkov wrote:

[...]


>> +	/* One endpoint may correspond to one HPD bridge. */
>> +	for_each_of_graph_port_endpoint(port, dp_ep) {
>> +		/* Try to get "port" node of correspond PHY device */
>> +		struct device_node *phy_ep __free(device_node) =
>> +			of_graph_get_remote_endpoint(dp_ep);
>> +		struct device_node *phy_port __free(device_node) =
>> +			of_get_parent(phy_ep);
>> +
>> +		if (!phy_port) {
>> +			continue;
>> +		}
>> +
>> +		/*
>> +		 * A PHY port may contain two endpoints: USB connector port or CDN-DP port.
>> +		 * Try to find the node of USB connector.
> And then there can be a retimer between PHY and the USB-C connector. Or
> some signal MUX. Or DP-to-HDMI bridge. Please, don't parse DT for other
> devices. Instead you can add drm_aux_bridge to your PHY and let DRM core
> build the bridge chain following OF graph.
>
I think building a bridge chain across multiple drm_aux_hpd_bridge may be difficult. First, drm_dp_hpd_bridge_register() cannot register the bridge immediately; instead, it is deferred until drm_aux_hpd_bridge_probe(). When it is added to the bridge_list, it may not yet be attached, and attempting to attach it at that point is too late.

But, if I only use drm_aux_bridge on the USB-C connector, and use my own custom bridge on the PHY device and managing the alloc and attach bridge process myself, then things would become much easier.

-- 
Best,
Chaoyi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
