Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C02F3C27C4F
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 06:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4Zg80CXENZjM117GEUrDKE1IzRbLD2wK0HK+lyuspE=; b=2m+e6finjh/uxh
	xg50OtCnHB6KvFmuunMI2TtxPHKPSkTq1Fqi1xG4Q22yDpUc4agv+DAKruJTJQK+35na/lewu/vAc
	vtFGrfcFnCl2qsCFJAKlQqJvtiZeODQ/fqqGcIUx7R7GHsLT6W/NruUX/KYPldQ2aHG5pYs7ekXiX
	WeB56MZ1GzGq2CnwTfotktufJVtokiAnqZbH0YTztlN4gqKm6aWeRQUokJdLpJT0UGkXGQex0oq/L
	c2Du4quPkCF0ddOo64/N2CL7YKAxXsUYBwsCQI9kfak1e5nzFEH38YWL1HFtEejx5yysdQATkTnu9
	MzbD1DfxA2ypZUrh5f5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMM97-00000005av7-3rPd;
	Wed, 26 Jun 2024 06:28:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMM8z-00000005atO-0DXU;
	Wed, 26 Jun 2024 06:28:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8DA9C6177F;
	Wed, 26 Jun 2024 06:28:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BD4AC2BD10;
	Wed, 26 Jun 2024 06:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719383314;
	bh=hSJglXZYv5KAZogk1GoXR1+rsFxvyZYlzU5jgV1gLYI=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
	b=P3piVmjKn7J1QV5gzfNXeeO7wmxgfFsVN78j8VFq5jWrsV/vFQQygCKRTS1mMcrPf
	 sVWeXtl164fnP3Dj+/XFs2w0aWTvWDlcjI8DQ4pPtZVbWcJmxcJZyNJK+2mnbQrOqB
	 hBRsYxk2HBCum+obj2YF4ApHJ6/e0GwXmceBIUMNIZUXZLwBBLQ8to/R8trXoQX2ty
	 kmfIri7NNZzqghuAdvBtqpIqqJmTD+/6iqxODNLz5klJISMJs6zU8oNqt2E2BI+RAi
	 OK6itTDfwnDfo198T7sZX/j+i61lb1bnZbZUqjnZGgo0JJo52V9LWq5e/uzjTNqLaS
	 UdKyGzchhP7rA==
From: Kalle Valo <kvalo@kernel.org>
To: Arend Van Spriel <aspriel@gmail.com>
Cc: Jacobe Zang <jacobe.zang@wesion.com>,  arend.vanspriel@broadcom.com,
  duoming@zju.edu.cn,  bhelgaas@google.com,  minipli@grsecurity.net,
  linux-wireless@vger.kernel.org,  brcm80211@lists.linux.dev,
  brcm80211-dev-list.pdl@broadcom.com,  megi@xff.cz,  robh@kernel.org,
  efectn@protonmail.com,  krzk+dt@kernel.org,  conor+dt@kernel.org,
  heiko@sntech.de,  nick@khadas.com,  jagan@edgeble.ai,
  dsimic@manjaro.org,  devicetree@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org,
  linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/5] dt-bindings: net: wireless: brcm4329-fmac: add
 pci14e4,449d
References: <20240624081906.1399447-1-jacobe.zang@wesion.com>
	<20240624081906.1399447-6-jacobe.zang@wesion.com>
	<89f2564f-788e-495d-97ce-f1fa8a921d50@gmail.com>
Date: Wed, 26 Jun 2024 09:28:28 +0300
In-Reply-To: <89f2564f-788e-495d-97ce-f1fa8a921d50@gmail.com> (Arend Van
	Spriel's message of "Tue, 25 Jun 2024 20:23:09 +0200")
Message-ID: <87pls4gqur.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240625_232838_224263_3A9E55E1 
X-CRM114-Status: GOOD (  11.21  )
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

Arend Van Spriel <aspriel@gmail.com> writes:

> On 6/24/2024 10:19 AM, Jacobe Zang wrote:
>> AP6275P Wi-Fi module connected via the PCIe interface.
>
> Repeating my remark from v1 series although I gained some knowledge
> what chip it should be now ;-)
>
>> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
>> ---
>>   .../devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml      | 1 +
>>   1 file changed, 1 insertion(+)
>> diff --git
>> a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>> b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>> index b9e39a62c3b32..fd22ade92210c 100644
>> --- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>> +++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>> @@ -53,6 +53,7 @@ properties:
>>             - pci14e4,4488  # BCM4377
>>             - pci14e4,4425  # BCM4378
>>             - pci14e4,4433  # BCM4387
>> +          - pci14e4,449d  # BCM4329
>
> This should BCM43752 iso BCM4329.

My simple english parser threw an exception here ;)

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
