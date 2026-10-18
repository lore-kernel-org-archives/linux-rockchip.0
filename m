Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8E5ECCF2CA
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Oct 2026 11:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cUMuA91yIr1DYhrUGdlnVaUv/Ie87u9i2W3F5I1IR0=; b=vtQCBMP9LoJepj
	j2qBYoyGiXj8pC9yNE4rfb47/8lh2pa+UbGuYRXNYIfjMLvO3+zDkdwOeU8admB0wFib5IhuYgVz/
	LVq9rtkYsBf4w6txTmNSVLhrp8ZPFUcl8S85cprjlu3nocFEV4/0sJAiX7Nf3v/vyE+DopzBuDq1Q
	/gUXBHVdaaN6ybYNeI6sfxYKFnW8R6mHu+te57o2D3lW0FT/Z7wswEagwXFWquZ9VAOaRd3BHCsmB
	/5m8/H6kF6sRPSIaEDSyDULdewPpr/mz0uEInFK3lywZfai8Cye15Wh/54LqtaNhFcUDwYNWcbGEC
	Qgcw53qzGgMjSHdDZ5mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIPVH-00000005p08-2s4D;
	Sun, 18 Oct 2026 11:56:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIPVB-00000005oyu-3O6Q
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Oct 2026 11:56:36 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69I5tmIU3129386
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Oct 2026 11:56:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gcEYZe12IS5R8fbm0oKp4F5/
	idlukA88I/0oldtDxJQ=; b=QvQ9Afmzj/fGG+aeASrcA/JAaYzYGKk6IFlJtbUL
	W5uH3JiBvrYtBFZykDTHD+Tt8jKX4GWEdGsUD0D/CNPcV42pZYoskpnfq8yAn2TJ
	JXZqU5JFzIO7YLkjVbnQ29AjMQkbTeMKVfeGXEPu2rpZDRdhAl5uLx6qU0X/Qxg2
	D6gB8QsP3SURJ9+VxKET818hKXYkd3wIoLVBDMXRbjBGDdPQrFH+ZLYwJUC8r3W4
	yLU/HfKASohkj9S3ANaovwgwu8urHvo1FRMMb1sg4Gdb6QvubeYSQ226KPx3hdR+
	CDGjnlupNYD6znJGGMCNc3Nq9nHEt3gedBst9cjCh/7Sdw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc13uu0d4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Oct 2026 11:56:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93909014c85so288584485a.0
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Oct 2026 04:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792324592; x=1792929392; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gcEYZe12IS5R8fbm0oKp4F5/idlukA88I/0oldtDxJQ=;
        b=YEIAHuTtlZybITOhiupp4EYMY/4ZeSR+V8b73dojhO2opish9cClAh7TewCkV3arfN
         qCd5qmgRlhOwfndSbTLpijsjt1Rgzuo8nbQWNXGz2iEX97ilg/5egXL9h2so7HQ2Iv9t
         ixUazIusYfmHVFLST0J/K8PZd8fWKureRTSgcGqaG23Hm7MdrxvV1sYs1XktD9g2gR/M
         d7mpwc3b2z/XB6mWxyDsXYDXl4fu6HassEKyy9q44i/AoZYlRc4NdVcC9cBoEGMiGCj1
         ygxTlnkYWgZdE0uH6tAVd8sV8v1WVWTbPc7J9DRszM70igzofsJm4DolbXCLWopvSbli
         H4vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792324592; x=1792929392;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gcEYZe12IS5R8fbm0oKp4F5/idlukA88I/0oldtDxJQ=;
        b=Fz2ovQCZO1FLaqZsODw0dTWycHuXRFr2Wg+9HCViunBAR1hbxmf3SW+FmvMZc53XBo
         ASh+dR+E0LS819eDuMPuClZKiRuTY5erB8DRzV5yicTLJhWKUJaAGSP0yFoGfM0lVCZG
         UMWFuXihhrvdy+I8LLFBgvGFRLtMNHqzJdKbRsoHFca2cM21TwsQi7uq3CosU0Vjwv4j
         e0uJb8bE65bE8tiqVJloO+wi0I9XDSZg11SfwJYWsxXgSkT1GmFdVMtEm/bv4P/SRDwr
         63lK97aTjlzTFwONpoB3OZhxe27alWexu7+ZyTADkGot5jglnLX7I7od6p7esareDsTd
         6gOA==
X-Forwarded-Encrypted: i=1; AKwUvBxRjsGFZ1Bc64QNXLVoocITXo0VaeoMoZduEVrkLr0lAjqtcYuQOFdHgnZGOUogXfbsALcqv9spxIdHEUz/8Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYKZmexAmcDM4inMadQfz3IkdL2TKJ7GY6ex/zBJwt7GPzdSdTzT
	c56eRfFxw5NIhe2FD8Qyz1XS5Ar79xRt2rEJ4/3JRDeEyok1pdze6AeZ3jI6NcudrN755WbDejA
	nm7k4C/ZemYRGu+qpOr0uCQ6xZNhXTfwAtfsWzTwP6Oua/iU3LMQaE/BPmKs3WPGEA8FHRc/B5+
	s=
X-Gm-Gg: AYBFou1o4hJIhxA7EbV3n0SZ8KMBwT8ylTWTRHxKmoptNNvRpaS8RAHCij5vEnx4Fbv
	OWv0xT6sR58YoWUx4wmEACx+AvaVe7xdkLzFv8h6Zg2n3cK3qzSHlV7vGD8Aa/FHKnD79/9rpE5
	tNNKA64ceUBLI207r0VJaakQjt2/5HIp2UPDe/9J7FB+BwTKcbSnO2jjUFlkiy2xURzmknnXIfl
	Io7A5917dFeOYTdmRjFQKB0jUEchwMBbx7Y2hGjTbYAKcSxSYyyFECPRELw+oM3O1nTfHCKZhg2
	uAUGiro9L782FATgGUT03OB6pmwZ4WysZWnpHVg2ZdxJi96rb/g9VoWKBMTFOT3ojvRSqv8+UXd
	QgcrgDPOg6gKogtoY1wVNho/P8FHhAqHFgn31OOLpF2ZlPtBlSjS8S0N1nggPRh+ZFOxqmYKTDe
	KGZDWhOQz0TsJo
X-Received: by 2002:a05:620a:2314:10b0:93f:31bb:e3c with SMTP id af79cd13be357-93f31bb153bmr332142885a.68.1792324591843;
        Sun, 18 Oct 2026 04:56:31 -0700 (PDT)
X-Received: by 2002:a05:620a:2314:10b0:93f:31bb:e3c with SMTP id af79cd13be357-93f31bb153bmr332139985a.68.1792324591331;
        Sun, 18 Oct 2026 04:56:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5be4a63cd1esm1370126e87.72.2026.10.18.04.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 04:56:29 -0700 (PDT)
Date: Sun, 18 Oct 2026 14:56:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sebastian Reichel <sre@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, kernel@collabora.com,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: Use DP AltMode defines
Message-ID: <46mtzsydckbt6ca66h3stj7sn37ittzarhc6nqbjp3fitaqx3x@i7b7vbpxsui6>
References: <20261017-dp-altmode-dt-defines-v2-0-7ab3d93553dd@collabora.com>
 <20261017-dp-altmode-dt-defines-v2-4-7ab3d93553dd@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261017-dp-altmode-dt-defines-v2-4-7ab3d93553dd@collabora.com>
X-Proofpoint-GUID: CZ5GBZ_gnnggkz2JpvKM9Wo9DiV9-wNK
X-Proofpoint-ORIG-GUID: CZ5GBZ_gnnggkz2JpvKM9Wo9DiV9-wNK
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE4MDA0NyBTYWx0ZWRfX6v6XOBE1P0UQ
 peODjaG7gciY1CGlGU47sYPOAc8vVYGf4fkzuj1TyHkhNXE2ZgNE8Hs7jCTn3W8jAQjpR95/eQ8
 JUoBTZ2kILisSp58+esXxv+lUCmXxgo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE4MDA0NyBTYWx0ZWRfX/efy/JAD7iEL
 DoAB2qo76gsf67nqGbuIHJvyaB1LGt55vO6Q3Y0KZQ+z5h7whoIibyaR6FjvN2/fnZBm0pWgKp6
 N5diM/PjmxbUukoHlkDgE430torCHy1wHYxJV1Mgayby2oF1obytQUjBbVtJRNKc1V6TETudMCc
 +c6ZzoPIqqgjwhnjrrvYSM1b8VTy2Dk8dD+S5hcrVtNluLjL3pukuuV37cBSKxEFJG1RT5gqy3y
 u2hJXULdGnp/cw02/bqQtq6iE0W9x2H9oD7xv9/JKa+CJoUwNquRZzmyNQ6/Osjcb2F37BnF32v
 KmdmClJzXkZ5TH6KhX1W1fnYSI6rsptjwyXx0UqVxK1SPid9yi0LFt2y7Y5M6c5FF8rEnCdu4H9
 HSMc/4hRmfGavfknrk3wPmuhe4TmQPCW9c1aVotUVZPuUHYNIHNllqkbXBBimP7FvcCfS/qw37M
 UQ+psOntKWM5tiR5qiQ==
X-Authority-Analysis: v=2.4 cv=SKzXx+vH c=1 sm=1 tr=0 ts=6ad4b3f0 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=imkpALUroobUoGdfvlcA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-18_02,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610180047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261018_045633_963346_ECA941E4 
X-CRM114-Status: GOOD (  13.98  )
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

On Sat, Oct 17, 2026 at 09:59:33PM +0200, Sebastian Reichel wrote:
> From: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> Use the new USB-C DP AltMode defines for the SVID and the capabilities
> VDO to make the DTs more readable.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 8 ++++++--
>  arch/arm64/boot/dts/qcom/sm8150-hdk.dts  | 9 +++++++--
>  2 files changed, 13 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
