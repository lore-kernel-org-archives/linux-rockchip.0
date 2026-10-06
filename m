Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B60BCA5FF0
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 13:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8h50fyG+RK/LIAe5ggPK1KWpz54D9G7rQETeNU7p8g0=; b=YHdTXU/h+Kj7+9
	4x0dfIZBoB+3wWqx2PyiyksEcHJGKCffQUSniMzkXv9Apfw61S8yL032AP0qP5A8S2SVlR8tyWQzs
	S9r86TNutK4kjcvptj7azMM82ETIDMUCo0O5rfz6SEpfpLLe3uAccPXaQpfRtQ/WZ+E2imudyE6QO
	sjMpP5Znc8TFjuaW3CeJ+xcegDRILtIOwMuQNIrORCHssxTF06SNskXtpO9v+N/jzHktvk+MIpjRK
	E1GRqV4SfFvrz7tjY/I11/qz9VN44BF7dgP6IFH3RPie3rhg/kv+hsMW9Jt0rWtPKjbaMYPnbGFGR
	ocYYANvvREO8yb1+a3Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE5e8-00000000uge-1w5h;
	Tue, 06 Oct 2026 13:55:56 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE5e3-00000000ueY-0LEk
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Oct 2026 13:55:55 +0000
Received: by mail-pj2-x08.google.com with SMTP id 98e67ed59e1d1-398b9f722abso1461652a91.0
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2026 06:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791294950; x=1791899750; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=Id6lH5GTy+yyaEPTm6FcZZ7BLsleqqnI80GvEmpDvAs=;
        b=l86ygQqkunGOIEv8KN5Ey/Ezwi80Xz3OYEYfBfBAoJdYxzMIgrXyapuC4qZGmLMEim
         0z+lc5PlQRT6O61gwxEwG5pk/5Am4biy1MztbCdeTkS8uYwWxaGz4QwltYYtD2K1V8Ts
         WTD9axiRHqFGvF92AIN0ej+Mp4eNQdqd0qctBnWQmBt/BJIRfeqQoKJii7THvmCld0c8
         7qJPZGLxq+xKy+OyIJQZY0DDq1ng/34cgCHn6W65A0CngXtHy/Lq+tObPmp5pAci+vZq
         7YIdf1kDytdd7V5M5AXwvv8xXnTNWMJj8KaCF9yxM7R4vzA2qWOM1Iz914tR/GpwyuBE
         tNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791294950; x=1791899750;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Id6lH5GTy+yyaEPTm6FcZZ7BLsleqqnI80GvEmpDvAs=;
        b=kxzlh+WkxR/FhCf6b/l7sCT5DfVsO9sh0HmLwBPXemruCEIZfwpYspRNTKzeK5UpKj
         +avfGPd8MWM4ES9UsjYwsfLVU/4SPOnUfcTvsgosDGMTjNnFpnOZzH7kDHzJtEzZ/No7
         S3P+pTVTDTyYIpPNuP5N8m++bWzC+eJ/xCPtf2zQKN0vdsVaUCbCPno6FrHVMib5EWuN
         C1h7AJ9sXXJIEd97JwYzwGnNO1qbjAGDxQt+K9QbZ4it5pP3t3CrBzqQiWDY2Vm/Msxl
         4l/TDGiAntxvqgs2E45c+atQB0q0LuVB9MneNdzUVU6vKukwzYHGgPGVjzrRZdLRRh2V
         P8Jw==
X-Forwarded-Encrypted: i=1; AKwUvBySlbDlGf4tewc6nJeF4coZ/huDfY1d6YOyB3a3iY1O3y1H16TSfXnSadlAhMMtCwaZ+m6Faf4xU/sSXrUhZg==@lists.infradead.org
X-Gm-Message-State: AFq9FYIxJGtRiHlCSUlJ0zN4ddeGGrTzUFGg95ibnM37FMqdx1gKpnoI
	leui77gaFhUgBr9q0Ff3e+0td8xYFfLrOvA7nfGswV2Zkn+fZqukw1Ig
X-Gm-Gg: AYBFou3aq7dxSI1AAvgfYB3W5PEV98gqwK43US5iX9yI1LM4bYb/9HO0GtANLWwtIey
	yvosqN8FgJWTPaMa5ENhnEKika2eeHN0W/3zb+fCx7mol03aN5F3IHoExLdojot4tv0fc/HLjRa
	teev3e7muFot0JmP7lYtOVqtRfLNBLY8clKEKLfWOyyZFEUoEh3LxW4F634Czf5A2eBf72Hg352
	KbDbxCj/3O9gOaW3KBtl/QSqZ0Y4lpmlgnsD3qYcOgA22lCslSBZtAN6hg8njPYKcI8pfsbaGy6
	Sc+llweskCJ7lX+ut9Hrc2z9qIJyZb4QA4XjJci/s+nxWUvgv+YqkWKD4bHaovf50KEeHOR66rt
	RB+Sn3vcPSaICnPy4RU9VCt1nyV9gIow9X4hC1MSaPekv89w+bvCrss6S1NzPBxRhCPlPgU3eoi
	DMGLiOFuAzr6IsX0nju4zz1daUQenn1Ulxv2SZ2TgViH5KQRy32q847oFnpPuB3XrFDOg=
X-Received: by 2002:a17:90b:4c4e:b0:3a7:eb0:119e with SMTP id 98e67ed59e1d1-3a873554164mr844006a91.21.1791294949932;
        Tue, 06 Oct 2026 06:55:49 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2603:c021:8000:9500:233::14])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ccf99acacb2sm1189776a12.22.2026.10.06.06.55.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2026 06:55:49 -0700 (PDT)
Date: Tue, 06 Oct 2026 21:55:41 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>
CC: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>,
 David Wu <david.wu@rock-chips.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_net-next_v10_4/6=5D_dt-bindings=3A?=
 =?US-ASCII?Q?_net=3A_rockchip-dwmac=3A_document_pcs-handle?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20261006134802.GA1916640-robh@kernel.org>
References: <20261005223011.1124347-1-coiaprant@gmail.com> <20261005223011.1124347-5-coiaprant@gmail.com> <20261006134802.GA1916640-robh@kernel.org>
Message-ID: <F86D938C-01FF-4398-B4A3-69EF2404FB72@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_065553_357027_BB6A9E3A 
X-CRM114-Status: GOOD (  12.15  )
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

On October 6, 2026 9:48:02 PM GMT+08:00, Rob Herring <robh@kernel.org> wrote:
>On Tue, Oct 06, 2026 at 06:30:06AM +0800, Coia Prant wrote:
>> The Rockchip GMAC binding needs to describe the PCS reference used by
>> the SGMII support added later in this series. The property will be
>> parsed by rk_pcs_init(), and a missing phandle fails the probe. Add it
>> and require it when phy-mode is "sgmii" on rockchip,rk3568-gmac, the
>> only SoC in this binding that has SGMII support.
>> 
>> Signed-off-by: Coia Prant <coiaprant@gmail.com>
>> ---
>>  .../bindings/net/rockchip-dwmac.yaml           | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
>> index 80c252845349c..bb7540e838033 100644
>> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
>> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
>> @@ -120,6 +120,12 @@ properties:
>>      maximum: 0x7F
>>      default: 0x10
>>  
>> +  pcs-handle:
>> +    description:
>> +      Specifies a reference to a node representing the PCS device
>> +      connected to this GMAC. Required when phy-mode is "sgmii".
>> +    maxItems: 1
>> +
>>    phy-supply:
>>      description: PHY regulator
>>  
>> @@ -159,6 +165,18 @@ allOf:
>>          clocks:
>>            minItems: 5
>>  
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: rockchip,rk3568-gmac
>> +        phy-mode:
>> +          contains:
>> +            const: sgmii
>
>The 'if' will also be true if 'phy-mode' is not present. Probably not 
>what you want? You need 'required: [ phy-mode ]'.
>
>Rob

Hi Rob,

Right, thanks. Without 'required: [ phy-mode ]' the 'if' matches whenever
the compatible matches, even if phy-mode is absent. I'll add it and send
a respin.

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
