Return-Path: <SRS0=2XDZ=JD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AA6C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 10:55:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EBB6261154
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 10:55:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EBB6261154
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hRvIV0ZyOkiFeNqA/MOxRDlMhzXNxu6x0sG5iqPB6R8=; b=KkzUslrTqiRbuQgie8d/nLFLH
	rvqONDjUHqe1JRnHH8P7G+E0J1foPhGTj/UCoKrKyFaRMXaxDiNc7SVQ+n36OoCzgtN5HkbKBk1z1
	KtPpwdbiQr/fzKNM4j86gWw6D7hVaf1nH+8mZQrlpqjVa7BnKpURg4f7F4cQutqcRi+RXe2NZnvns
	B+Meh5iFFH2uKd8br/Jq3DVlbEgageqIevPGhddu+0R2BS8exXUonnmmlPnDEv3GICcrm2MnieLpK
	HB9PX+l78rgjvpAG2D/m5CQpa8m7erPRFQCzAW9o51RpyOdXcgQCHCPZI4+eZp0Vi0YzeHbbFfvxK
	u98AT7kkQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTjMS-002Etq-Dt; Tue, 06 Apr 2021 10:55:09 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTjMG-002Eqf-QH; Tue, 06 Apr 2021 10:54:58 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id TjMBl4T2r43ycTjMElNcue; Tue, 06 Apr 2021 12:54:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1617706496; bh=KGNqE7vtP9+apsVEQYS3HwyvXAaxHklSuPGEUI1hzkQ=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=LYdeDXQeL/YsRcoQOgNGrpvRBN20u1hq4XiQFUszeYziYxHO0c4NkZ4k0tamDh6Ec
 bCFrNmZ5OAUqW858uwUMB9ebAIQLBrhaAI4WVFTL9fvuMUDxXdzuC1rCTVJA/CmgFA
 DSNW0VJAIuAX4Yj76V/KywFh0ik88bWKggyDlnu/++MGMNZ94id3BwQ9V9kVSW/Fit
 4mMHIdAbCaGaUMcskiGL1nPi9hO/RbThkAiC0PTH+O63o3Q3ltERt9TwZbDQDh2fkT
 lzJWRX03q6ZylNvmQsND/9gBaJYTqq3Ulx89yQ+t5gki3BzcyzEpGCVory3SH855Xq
 aMl6BOdHm3F+g==
Subject: Re: [PATCH v8 01/13] dt-bindings: mfd: Add 'nxp,imx8mq-vpu-ctrl' to
 syscon list
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com,
 Rob Herring <robh@kernel.org>
References: <20210401160003.88803-1-benjamin.gaignard@collabora.com>
 <20210401160003.88803-2-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <430b380d-a437-dfdc-5fe7-c5cfe2a44935@xs4all.nl>
Date: Tue, 6 Apr 2021 12:54:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210401160003.88803-2-benjamin.gaignard@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfNUlMbdwNq3v4AT78E7WX19Tqn0ScOtvTMR8PCQm+vYaaalzuFAzpeW+uB2V06rsoPQims10Rzebi13I8RHuqiXt9oWnHoZIYvyVbTfW1xD7azqfQp5c
 iOyxlx6fz9UrHgY63yuJl/Lgk28DiSLwqC1cr3J0KA0UM58ynYIUo6RehsTEKopyStCLRsL4ClIsecG4mZfZ7yAG20nTrjE4+f8rJnUXxwGyFIeTYY88C8WC
 kZxbvQRj/MaKFw/8R9jnFhLJGl6MGhL6FvYGkpG4Ed3IAVN8vkTR6LxnwdKHxrgtf1ol+izQwb1PUn7pYiIsUNQ+9+DJPdj3SZmuKqPGRj1tCu1E8XvwjIKP
 /e0nYfaXyI9EKStq7GUCuteTqchAWihH1iMuQ2VjRKlI0PR9qlpHrs/9CfcbIBZt9CLcCTrFT/iNVrMV8f2lxk2XWGawrF9Cj7K+PSQHWg2js3Sxm1x6DWU9
 3s7AobvTnc1/fcUZFs8G0hYqSer4oWCE9PzyyBQ4iaWTHfUowzEzdL34eHpGm2KiWuMknDRd4BYbVnU15qUx7IC/aPgfzX1pEg7T9vaY4Amg7Ko5s6syoz5i
 oGH9gbZdkpjpeSpbt62iY/KOiuoeenqFD2jVEuGU+AbyF272+/hFkW04Rf2qIaLpDbtn/dnlDshDCgux1cepO6Sydh8zigIWTngD3FGTgyJQQUafKn5czBca
 dGjH3GY3f1ZT6V5uXFoVRM25JJjPawa7kmfLba1XHs2bGnVLJuoF8LiIfGX6T+aVN1zhpHEk63IQHRuQElyPFQnLsbBi8W1YPQuQgWaRXRNSU0qbOGNuC/mr
 bHWdSpsF5j+eKlAVbS+6+vvpTDHyGtlc+7b932u08S3cpK8QX+ZYVt1j0DizwGN9yzE0NsBcFsNz5IvF5ZPs6yQGkx2/p3D2dsVQZycerAYqNNUzmdfYedlw
 PP0leHqZpMSMW3rOpnKvdkn7nN/GW4knsg6G80nVFO73qwS/YX94MAAOY9HXat35ZzLbx0eslDm1lHQGMUgEeY+ll/ol6Qyos1GFWE7THMuFPq0T
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_115456_958369_617C15F3 
X-CRM114-Status: GOOD (  14.36  )
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

Hi Benjamin,

The commit logs in this series have a few too many grammatical
mistakes. And since I want some other changes as well, I'll just
review the text so it can be fixed in v9.

On 01/04/2021 17:59, Benjamin Gaignard wrote:
> Add 'nxp,imx8mq-vpu-ctrl' in the list of possible syscon.

in -> to

> It will used to access to the VPU control registers.

to the -> the

Regards,

	Hans

> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Acked-by: Rob Herring <robh@kernel.org>
> Acked-by: Lee Jones <lee.jones@linaro.org>
> ---
> version 8:
>  - Add Lee ack
> 
> version 7:
>  - Add Rob ack
> 
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index f14ae6da0068..ae22c4730613 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -44,6 +44,7 @@ properties:
>                - hisilicon,peri-subctrl
>                - microchip,sparx5-cpu-syscon
>                - mstar,msc313-pmsleep
> +              - nxp,imx8mq-vpu-ctrl
>                - rockchip,px30-qos
>                - rockchip,rk3066-qos
>                - rockchip,rk3288-qos
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
