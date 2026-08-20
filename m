Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 666A8C5DF82
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 07:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+L27T54u31W93kSrv7Acr162POaO+8FQrn8j3EwW0NY=; b=hdr/zAfbx+Du7J
	z0gFxYjlMFWEpLtY1cg4RqAlCeZT3wXTA3ZZs6rdnnOukDidOxK1jD0DlsnBoaEPvKzSAt3GOQYAt
	rqzX6k888lFgL/p+UjlEkdxMiRFYshemgIhacf9QZkSVCbmwwCYFHlxMLXk1FWfN5XZ3AMBnqN1dX
	EYVzW0e+BbBwRGGG1T0rEWSMTNF+l5XmMwj2sISTkqD+1I6Gc94dL8QHHMg8lMPcJjYqDFLFSRGt+
	gAZzLA+3TgXP3+sRvHiOwUhyGarZoEw1+eG3VEv44ac0gmbuyvkGwsMqdkATzZfjf6GTgAqzR8Mqj
	GXeLLsWVfIviDVUU8vYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwxUW-0000000B5k2-14WP;
	Thu, 20 Aug 2026 07:47:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwxUS-0000000B5iC-40Kv
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Aug 2026 07:47:10 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67K6Y0dx1457562
	for <linux-rockchip@lists.infradead.org>; Thu, 20 Aug 2026 07:47:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FWemyG4N4ylx8AJN2NYbSRutWHMPkhp+MiTGTIekUm4=; b=agAReysmKjIortik
	PpCcf6FrLsBAFvE0L36aRTnWYqI+2R+0kYuY77jU6VmYzah32kclW2u3mzNnW8OX
	M4+9abOckXZ1aVh+cheNvogAjrVtl5op3ScbA0oxs18pLFQwmFZE6u51IDK3nA0V
	AG+BpfPw/uMiNl8Yigark5SmCr0wq6OIJNBtOFYchSOdgDrWOYtfRm0wgHhG8P0F
	Nd7f2l8UBeQtWDILlHMdk5SsvsbCe5cdm/C7McjEZwwhXr74nCvTNoZUMehQUS8C
	CGb+yjf1tzdvKdaGaJCxvSQ0UEV5ECe7kaMsaZgJrhH0B1p1NOSSnOcAR84qe4Wt
	87Yieg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g5es4bqks-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 20 Aug 2026 07:47:06 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-52de05de414so11999131cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Aug 2026 00:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787212026; x=1787816826; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=FWemyG4N4ylx8AJN2NYbSRutWHMPkhp+MiTGTIekUm4=;
        b=Fd57lA7QYSWmc4i11jWOCxs/wQiG/n1J8hqOaY/l/0dV62t2FwO1nMZhabIIamKepG
         JWnYuGtttOYLB56IqlxBY6Vt4p3fqnx/3ZeGvINmLAi3uhO8/sGIYdmQHhCq2ppYMcL0
         caJn0t57FSEw7RJKG8+11iuXG7PIW7LPnhlUFUzufhw0hFkanccOOOCf4x6z/rdEFrDY
         ZGdZyR6dnWtAw8SIn+f4Xw29JDM+gbD6jBxlLZ87Kw1kuTicLNrGlGaHi6ZDy1rdgH+9
         vL3UQK+ixqRzv13Y/AYoqD1GL901/0clDcqyCQ2aCvEoKAIsQope/ug1YiovvMFdZZAf
         3img==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787212026; x=1787816826;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FWemyG4N4ylx8AJN2NYbSRutWHMPkhp+MiTGTIekUm4=;
        b=TKM9P2Yvg7LE1zhcbIt+ZDeAIIJ3VBxjUrzFrbh9O7QeOpy4ufQnjE8NDSDApPUkz0
         z0A+qYczGcS+242NUlibuBo6eREOrEfLIUPCO/fnhH5mTfi1CNg0pfovEHv8n9VQ7dgn
         vCq4vUq0UKSVZO+mMTU36eBk4ggUL9bZ7E+5au+opJRO1Jxj1a31M6fIyQ3F3PsC8ZC5
         LBO0KtR8UIfy72GtilodpkpIdEqzPPZ/m8+CXYekLGhkPE1fS/rBSzx3ZoCuq/rEz1v2
         yzMxgmFpsJhjCJUR2/Z0kJbnxCRNYsyLnqTCKB74rLIQIok5+9HEjOhnNee76lCHdIoE
         s7Uw==
X-Forwarded-Encrypted: i=1; AHgh+RoG6pq0IzL9/2Nz3jQ2eEABya+KyrcBBJ8LSyvqBbdWK5CC9x4Rp3XIM42CoGTrZQCJVX+rNid2DnVBY8G/Bg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxw00e9dOEF5ESPHcFD57BP5hZ9nZTEuD5XcioizhLNt0AbWR4K
	VMxWG3PDnkJpcnzXKB3h/P6SF3pN8dKRB7R/knJnv/mZkykYoVaRLO524bjAuRmfyXB7oYBwafu
	WpIZwBXDbpEN2xDsGld7q04rtE2K7iXuf+pYq1Sd/Qy4kphZTq94oROhF3WoPO/wXOEnSAnxt/2
	E=
X-Gm-Gg: AR+sD12xOAAB+bkPlUYYEBH+3DtDZFjquujpHXolFliv6K8Fg/W0OIv7LfRI3AGc4x+
	ewBQ8Hn770nSdb7ST/MFW88sxwyEl5IfbVSYVCz1f6+tQhS9YaqahyuywCIA2jH0erhhvdT8Rj6
	Oht3qUvIRbH2ShihltKZkGeR7JGK+SC2Zag0MdvboSIpln9hSdOmQjk3BOif3MpelUaAe0cmxFU
	FmGt12lcNy/6GD08vAC5bmpBC3tVFCOYw5M0QyxBNZmdodWfkhh1+JEcycj1WsZofb/gkSkh7Nn
	+YRmBxd2n5VoMbKzL373fz08jzgTQNDUfRZHfr70seU9O1DnLblKYiZKmxLoXnKMBlOz94BCW4g
	KzDXYz9yJ1v2MUR7kG/ChLAxEDbJa
X-Received: by 2002:a05:622a:2b4b:b0:51c:a70:5ed with SMTP id d75a77b69052e-52dd5c9313dmr98105131cf.30.1787212026504;
        Thu, 20 Aug 2026 00:47:06 -0700 (PDT)
X-Received: by 2002:a05:622a:2b4b:b0:51c:a70:5ed with SMTP id d75a77b69052e-52dd5c9313dmr98104821cf.30.1787212026125;
        Thu, 20 Aug 2026 00:47:06 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa0dd5fcsm133844445e9.14.2026.08.20.00.47.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2026 00:47:05 -0700 (PDT)
Message-ID: <0f8f3d24-41ec-4878-8182-c805c7db7c23@oss.qualcomm.com>
Date: Thu, 20 Aug 2026 09:47:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 04/12] dt-bindings: npu: rockchip: add
 rockchip,rk3576-rknn-core
To: "Rob Herring (Arm)" <robh@kernel.org>, Jiaxing Hu <gahing@gahingwoo.com>
Cc: linux-kernel@vger.kernel.org, tomeu@tomeuvizoso.net,
        p.zabel@pengutronix.de, ulfh@kernel.org, will@kernel.org,
        conor+dt@kernel.org, chaoyi.chen@rock-chips.com,
        dri-devel@lists.freedesktop.org, zhangqing@rock-chips.com,
        linux-arm-kernel@lists.infradead.org, joro@8bytes.org,
        devicetree@vger.kernel.org, iommu@lists.linux.dev,
        linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        krzk+dt@kernel.org, alchark@flipper.net, ogabbay@kernel.org,
        royalnet026@gmail.com, diederik@cknow-tech.com, robin.murphy@arm.com,
        heiko@sntech.de
References: <20260817113603.1436067-1-gahing@gahingwoo.com>
 <20260817113603.1436067-5-gahing@gahingwoo.com>
 <178709455518.1014304.1443906758035976924.robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <178709455518.1014304.1443906758035976924.robh@kernel.org>
X-Proofpoint-ORIG-GUID: rG8jnLsP3VddEzExfijmyezz2JODmE8p
X-Authority-Analysis: v=2.4 cv=PZXPQChd c=1 sm=1 tr=0 ts=6a86b0fb cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=9GNsruGHAAAA:8 a=EUspDBNiAAAA:8 a=SdGosrV6Qt3YffhYJa8A:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=gf-oSkQAjqHFJRp-GQfY:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODIwMDA1NSBTYWx0ZWRfX2SiUMv5bHCJp
 HfuVvJbKa6W/v2qXEKM27QKbu8sA8uVYN6COldukldUlpzpKEvzbMFP26yUsH5UA+M6iDM/paJb
 ftooeRdCbFHInn34P/2GIWnFVkigVR4=
X-Proofpoint-GUID: rG8jnLsP3VddEzExfijmyezz2JODmE8p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODIwMDA1NSBTYWx0ZWRfXwVtgagXhAxYk
 1wlrGimZvPwzDRp+InMwTpwCwp+uHZWPUi3p+TQWwz633qVDHBO/oR4xu0UWQRTGTpaGczr5k7z
 hh0IoMcmndw6NEFOu9+LT0tiT3gYgr1XoRAeY9GfNaAff/G6Sj/TgfWPK0putJOhEMtgkzstR9+
 VOw0A1h1prdf95TGrRKLnEIOxUyZcYCLWvNeamCoQHInK5yfjBaxM9hN20LrF3DvaP2oknusPY0
 HgiZXqLGGq88Zqe96Ug4h1ocvJtS2DKU1B1G/cwmweTSLUucHR1nQd2BJKMJhtiU16XlkcmzMHL
 WF6w79cwdZHARNv3XjocUJFLigoHmR3uj+vJWVD+A/IC79EoFSYauhhAwNbGIpfsABP2itujIFy
 uMSmq5ZMh/whCrLj9lR/gONR8YBkRDPCcvkcALoGY8q4fKoBA4EkaZfuQcGg9y5dwUk7iDWtIJe
 1B5kCTFi4BZear9oChw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-19_06,2026-08-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608200055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_004709_104801_98967882 
X-CRM114-Status: GOOD (  13.14  )
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

On 19/08/2026 01:09, Rob Herring (Arm) wrote:
> 
> On Mon, 17 Aug 2026 23:35:55 +1200, Jiaxing Hu wrote:
>> The RK3576 NPU has two cores of the same RKNN block the RK3588 binding
>> already describes, but it wires them up differently: two extra CBUF
>> clocks, two power domains per core, and a single reset instead of two.
>> It also has no NPU SRAM supply.
>>
>> Widen the property ranges to cover both, then pin each SoC back to its
>> own shape in allOf so nothing loosens for RK3588, and keep sram-supply
>> required for rockchip,rk3588-rknn-core only.
>>
>> Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>> ---
>>  .../npu/rockchip,rk3588-rknn-core.yaml        | 47 +++++++++++++++++--
>>  1 file changed, 44 insertions(+), 3 deletions(-)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml: Unresolvable reference: /schemas/input/qcom,spmi-haptics.yaml#
> 
> doc reference errors (make refcheckdocs):
> Documentation/translations/pt_BR/process/security-bugs.rst: :doc:`regular path submission </../../../process/submitting-patches>`
> Documentation/translations/zh_CN/how-to.rst: Documentation/translations/zh_CN/xxx.rst
> arch/arm/xen/enlighten.c: Documentation/devicetree/bindings/arm/xen.txt

Most likely false positive due to other things in the kernel broken.

But just in case - be sure you tested the bindings.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
