Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 592B9C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iymQltgbC0NQlbnnHg0lcWLX74no307DXoQXMJE84qc=; b=pKzDoBCBxow8FB
	bYZP2SIL3JzBtHkz+ZYkTdXBbhwNPAgJDXa/dARRw0+8/GrLfNVICVlrMV+zZWB/tMkpj/OemZ+2c
	W1b3ZryPc/81LHlJySdcE5xthlDsrdQ6obkUaL46xPuD19dOCTOXhSYH7tHdUJk1OZgZphF3MnTRj
	4rYJeUCaNkz/1XIUnIGBOD9DPXP9rm+4YFGxqeqHww0UijTxKq9siH4D3GYSyfipTqGQ36/esAmSY
	b6sp3TJCPcOnbKOfNh9e0uSPpEXKB0SQCFWfDmJSbG92HeMayzOCHImMV9kP+gZpcW/bBG2rGPj3B
	0Oh0eg01hDDTdYhGF+EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj3jz-00Awnc-BX; Mon, 25 Apr 2022 18:47:19 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj3jk-00AwdD-Fl; Mon, 25 Apr 2022 18:47:05 +0000
Received: from [IPV6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf] (unknown
 [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: obbardc)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 32C671F42FFF;
 Mon, 25 Apr 2022 19:47:03 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650912423;
 bh=GsF4PA6CVkBTkoQKSTNYtMWwQMXprSnuSY5mmmiZGNw=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=ZklSte8+3eZnlheanzGcfBd50w0HqQ8uMGyPCyFe6IaAZ+1jzBncV7Xi8jBfEQN29
 t6IS4bzHpBIiqexEVnFB24sGATNLmi/DiqqW9zYvot24zitqCkfQ2HbjPsYJofcn4O
 /ZIGGoDbsq+SNeMJtw8T0U0PswczvI2qcsgNDO6z9ysjoMGJ+tSGQCv7RYef7Dxmvo
 snY9qUtEtBRZsnC/aUQ2+9h53bj7TgAUQDhaZh1avmYADNWKhSBhx69U2GhOT9LjTD
 6/M8ZERD6Q+fAfgmmIDeytbf+tLWzSFcbd5aUifiqhKCAd5/zOVr52qQkhYpjYlM1e
 HBWzIDzAIOVOw==
Message-ID: <7ac887aa-5949-0c2f-b510-d145ee50c32c@collabora.com>
Date: Mon, 25 Apr 2022 19:47:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/3] media: dt-bindings: media: rockchip-vdec: Add
 RK3328 compatible
Content-Language: en-GB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220425123215.1055251-1-chris.obbard@collabora.com>
 <20220425123215.1055251-2-chris.obbard@collabora.com>
 <2c347033-bd63-05a8-94fb-2eb467e63e76@linaro.org>
From: Christopher Obbard <chris.obbard@collabora.com>
In-Reply-To: <2c347033-bd63-05a8-94fb-2eb467e63e76@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_114704_725653_1346CC2D 
X-CRM114-Status: GOOD (  14.16  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On 25/04/2022 19:07, Krzysztof Kozlowski wrote:
> On 25/04/2022 14:32, Christopher Obbard wrote:
>> Document the RK3328 compatible for rockchip-vdec.
>>
>> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
>> ---
>>   Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>> index 089f11d21b25..ce06835e8d61 100644
>> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>> @@ -20,6 +20,9 @@ properties:
>>         - items:
>>             - const: rockchip,rk3228-vdec
>>             - const: rockchip,rk3399-vdec
>> +      - items:
>> +          - const: rockchip,rk3328-vdec
>> +          - const: rockchip,rk3399-vdec
> 
> 
> This should be rather an enum with rk3228, so:
> - enum
>     - rockchip,rk3228-vdec
>     - rockchip,rk3328-vdec
> - const: rockchip,rk3399-vdec


Thanks for your patience with reviewing the series. I sent v3 which 
should finally solve this now.

Cheers!

Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
