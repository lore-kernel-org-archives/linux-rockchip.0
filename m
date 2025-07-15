Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF853C83F22
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 16:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQcpfBmRgCLwFWCQUbpwLD+vXQg171dnwirDIuxPmDc=; b=NvGnNDlfLQ6B3g
	9Le05GrK4i9TN0S9ZiGAtJ4/GjE7MQo6BePWIlOin5PiBCrUkwU47T3RHZ1gby6mX7dI4agvkD3ZF
	njJUV9eYv8L7l+Z2bZMBqbcb91VVRRY/LXki4MSEA77ksDq6FqY2Sq9zaFxqgWB/31RC3N07Bf+83
	2xqDKiOPVLa2LBPAAau5nFez/SrfQdo10l1AR9DR9kB8j4UmS5GPPOd2qYMVkZUojrOvnchcEQdMv
	No0mUDX26c8wBNzBvwRFhixb0YI3Cygt4KahspUTGfpTQTBNidbbm5FqkoYRExEj7wjlta7lsU9vT
	+oIC/iBJsqGmx0pk0EoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubi8X-00000005gyb-2huE;
	Tue, 15 Jul 2025 16:04:09 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubgXd-00000005LkA-0FMP
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Jul 2025 14:21:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1752589316;
 bh=hc3vsBfzOMAStJdYYEY+W0t5J5sQBFx3Mo+fJY+/Kfc=;
 b=Tt39H+e18zNst6xRUzjLERRvxUSbAHxCv3NJ+lBSMaH6qCtZkDRyh/yWr9JO1wTeCyHdHl4IX
 7RSPmtu3SP4J5tkZC1brIrEYUBimKH/qwcXQXSU4R7LpFBVfckORUCxeRqApxUjgtKNlWp8P5ic
 KAfJcawhDlpQ2k0xzevGgeQlcCCoKEoR9Fw/hc/Y6WeWQoxXN9YzKtnZKfpWKUtoo4rC41a6lS3
 IQgxO+uLW0J2luLVDyrrj65pbB/5kdurbtdS6Q1kLpyorZ2UGUGOPpEQoSlSe/9Idq2kX8di4bX
 W8g1rr6AgK3Hg49M0GjhIFWBspagSWdYEf9jWbVlA0yQ==
X-Forward-Email-ID: 687663ea4f06c51bcf022fb0
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <9050b4fe-ce69-4f93-9093-5461a6aa052f@kwiboo.se>
Date: Tue, 15 Jul 2025 16:21:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] arm64: dts: rockchip: Add ArmSoM Sige1
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: devicetree@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, ziyao@disroot.org
References: <20250712173805.584586-5-jonas@kwiboo.se>
 <20250715140115.1925358-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250715140115.1925358-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_072157_135091_8B7A58A6 
X-CRM114-Status: GOOD (  11.01  )
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

Hi Chukun,

On 7/15/2025 4:01 PM, Chukun Pan wrote:
> Hi,
> 
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
>> ...
>> +&sdio0 {
>> +	bus-width = <4>;
>> +	cap-sd-highspeed;
>> +	cap-sdio-irq;
>> +	disable-wp;
> 
> I don't think sdio needs disable-wp?

I thinks your are correct:

  disable-wp:
    $ref: /schemas/types.yaml#/definitions/flag
    description:
      When set, no physical write-protect line is present. This
      property should only be specified when the controller has a
      dedicated write-protect detection logic. If a GPIO is always used
      for the write-protect detection logic, it is sufficient to not
      specify the wp-gpios property in the absence of a write-protect
      line. Not used in combination with eMMC or SDIO.

It mention 'not used in combination with eMMC or SDIO', yet I see
multiple boards where disable-wp is currently used with eMMC and SDIO.

Do you have anything else to remark before I send a v4 with this prop
removed?

Regards,
Jonas

> 
> Thanks,
> Chukun
> 
> --
> 2.25.1
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
