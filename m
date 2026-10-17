Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 232F1CCF2CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 16:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzuF8N+9SHz7XXypF+gWWPcIE7jnUfv62gtECS/KizM=; b=eI078Gpm5s6fce
	y2IIlS9RxQCIFeELO+aIShJVlmLjxnJmpz41A+WDhQtjb8OtGnUjP5Jb0CGFytCKo0hcqLSEtZcoP
	p641lYFP/OlorOquYJjcOiKFkIAy+Ysf/huRIcndyBay8yiMW6W4LizNQmYlvy/bNfzNATjBfKPdb
	zRQsLPsg8gYw1hF0H5Hxihf/i/iQWBYTONRiRoOgmdNeHxS4NIfmV5YYRk4fwEQfEHjy71fRZet+u
	mBUMqigM8tGMAOC2CSlP6nP+3KLZ3Vl7COW949pyxi3Onm4EE6Iiv0mpDAa45xwxG9oNJlAEewMxu
	P6yjZAUFK0xauiNWCNWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7NC-00000004vpp-32ZP;
	Sat, 17 Oct 2026 16:35:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7N7-00000004vnp-2CTV
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Oct 2026 16:35:05 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HGAigP021133
	for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 16:35:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=M8Exf5uWUb9cZkvT1EFUDPQ1
	TTQV69aXO+M/fGf49Pw=; b=SvbhEerpHza+8SdmQLIHmI2tzCGBloUXBXclwzhH
	3zvmJVOB8xwyS3hhxJYTNNiBUKV0XY8PSqCFVNpgzc6CSSWCLvfPtkFeAkh9XIK1
	xP0T0+G1nwM3GWS7HSfRWAo/8PcMnsmd7shqnuEJ3rpDIoglzHyWZguFMOBASYUQ
	xSZvhnsNiP058el1npRPaibWiTLs12fbApd83r4HIqKT8fCMA72QZOq1uwE3l8N7
	UFCDy0DUt44epTi+3yVj932X9a0ROrwhjoNKlti0uhJoGJp9p+GEAT/QwlAJKX30
	ztQqKDxqmquratQ7dPnl35V6MTTEyo6UTZRB8hrvMHd/Fg==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc26k16yp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 16:35:00 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-147be78cd56so3798096c88.1
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 09:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792254900; x=1792859700; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=M8Exf5uWUb9cZkvT1EFUDPQ1TTQV69aXO+M/fGf49Pw=;
        b=joxoQ+w115Ag++LsrGnwW9GgIp7ViMgAFIfQISUIslGla1nScZUjZe3i5eBw19DzKc
         lo30PapsGh++LhMhd27bSKIqFEkX53paxKTiczCYikfDr6BDPLQgFWhTHBuvKwA9xknk
         seEm7rLV+zbP8JnPwK7mMUCLchaI5sNVNqinJFVwJbaw7aLfRUC7S3UiJFaEB4b3a8Tw
         LZo8oDwxj83F+tmtEsuH0rS4ITUcarRyyhi6Wk4d53JTORduj0LrsNB3HreprsYQo3IB
         42Dz/OKlio1ATKrejxF9A5ef5PKJGazKHD5wIlgtKDmO0Hzk60xe7zSsF3n7GPVd5liL
         Jc4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792254900; x=1792859700;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=M8Exf5uWUb9cZkvT1EFUDPQ1TTQV69aXO+M/fGf49Pw=;
        b=TaLnlSE83BGvNUnLSEP1YJ9NWXorj6RiI8Z4mRU2ftkQAlJ1dmocFb1efGKXtQe5nS
         /9cPlMI2z/mZ3+k4EHqrmopG1qc8SvJ7p0rWRD4axZ3F0tOv31BYc04QRk5/BbB/Y5bj
         3/UYWwQmC2hjjZkHNu+FrlnFabByUyRGRv2CJn2AZ3LjwOCDuxJsVwnDZHo5IcbWfkBD
         HX866cM2UHYtIhWu3x9bCBEpFlXrxgr94HFPUeJGtTO9t2/NJ8KPzzQ1a7TYuSvVGNM/
         WMGPLWTf5HuGi1gaYfCVfyKelIRBSpbfEqW7urfZJRwVkDtpu7mGZm+K9xu4VSjes6ay
         jd1g==
X-Forwarded-Encrypted: i=1; AKwUvBygNjNqVIrtpUMZxmuehdxtK8kRA1EGC1UU67xMOxYj20atmGDZyEloHGPIRqxcbYs2UsW9zK/5LHDqEOrySw==@lists.infradead.org
X-Gm-Message-State: AFq9FYImKHI/XjdWeTNV22TbeeNVQv5TGW/OHB/pv+r4c6jZfeaiyAMe
	5iDTuGTyYGA/zdMa0XxYTpnwVP4S1IE5b2oIwN+BsVTniYn8bCbB+Dvs8/yNC0+qjTUarOsxyxU
	GFmoOAgjqOZQlHvNp1hS45R5VYxACwjnauTYV9ClUbey2qnagktp1ft9QqLXKXnDoxg1tH+FD9c
	Q=
X-Gm-Gg: AYBFou0Sshnw4+8SAYNkgFF9dczfWpoR3rDJ8aT1obHlvuWcNWfWLQt5YGeJYvXbELz
	dWw6pe5PZkzI9Sefd/j3DUR2KeguSw9ltbVc5KLo/P4vCdilV1zV/u4y0+tAYEkWP3Uqx9ztu51
	gtyEJIVr6Y15SEbvOt3hgv9A0eELmvAuX+ArjqVKyMBUV6HuHPc+pUgNsrk3n9L3bJaMJRByQT9
	h0GNORWXn94OTb94ZARNHjHG3nM3pbZcl8pv4eJ8zvb+XRePjpk6eDANraH/Ub53ZAyaqxbSvza
	bNH0P/jjtBvUyVXowphnNCKmiUyE9HNbBlCy0MRVsDKdrZXrupge4X8Os2WZUZibwS6e2aIcnDB
	/TOs58lEvOfHH
X-Received: by 2002:a05:701b:205b:10b0:184:d593:2897 with SMTP id a92af1059eb24-185138b5855mr4814757c88.29.1792254899653;
        Sat, 17 Oct 2026 09:34:59 -0700 (PDT)
X-Received: by 2002:a05:701b:205b:10b0:184:d593:2897 with SMTP id a92af1059eb24-185138b5855mr4814714c88.29.1792254898926;
        Sat, 17 Oct 2026 09:34:58 -0700 (PDT)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3608258aa66sm21415852eec.20.2026.10.17.09.34.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 09:34:58 -0700 (PDT)
Date: Sat, 17 Oct 2026 22:04:43 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vinod Koul <vkoul@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>, Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
        Romain Gantois <romain.gantois@bootlin.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Eric Dumazet <edumazet@kernel.org>, Radu Rendec <radu@rendec.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH net-next v16 3/7] net: stmmac: qcom-ethqos: set serdes
 mode before powerup
Message-ID: <atOjo+X7y3WniiT3@oss.qualcomm.com>
References: <20261014-qcom-sa8255p-emac-v16-0-0266c2ead980@oss.qualcomm.com>
 <20261014-qcom-sa8255p-emac-v16-3-0266c2ead980@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261014-qcom-sa8255p-emac-v16-3-0266c2ead980@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA2NiBTYWx0ZWRfX8kkvA775VcOK
 pIXISHPnQJFPVjrXHwPy2lsxeRmJxD36/PLnrMhF+fR64iM3Jr8EkjpvEwsULwKcTREUTDoR8/g
 ptZu4fCErmzT7wLV5D7xYZXV7Y0ntLX0MLc6vUlHdDF7A158Dx41v+S/NuVt/I9NaGqQv3wpy+O
 tjfeB4wg4GdnD+OC1HSdUpec6bIzYrXpHlkLkKT51e9zWVuGHktOPla22W0UNkq4oyjZmi38K5G
 n92f+XZueUHTd6vdEsGSqX8WHiS3w8+Qcaq9QtNsCOtBNuBIFI+qTFkCGO86BhcQkJTjbYJito2
 ovSFHZw5Uxc+nZdlFPPs/O5o5ztVzroYGIdOP3ZDfwcbyBgUTORKoWQo8ZCfhFWyO+8EK5N+ttJ
 MpbXXuJEUlIafxZyl/hEx1SwooXKBZNZ/+tFMucE/QefQX0lKRimh3RYEVQ2MP4WjnV68exrcUf
 BkYu7ThZxyUcR3yiMFA==
X-Proofpoint-GUID: JJlYyWhoVeW6r3bJ8iXj35Dj3U4yyEP8
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA2NiBTYWx0ZWRfX3HtRdoGOrgqP
 QQMzLwXjRcg8rD0hiMZFYlev/hU2l/SQqEoCcydIfQ+yNLi0xREhtUgGGVXLn63m0pGINxS9NPg
 xhUpRG92eO2NW3I9n+Kf59G7We2pf4Y=
X-Proofpoint-ORIG-GUID: JJlYyWhoVeW6r3bJ8iXj35Dj3U4yyEP8
X-Authority-Analysis: v=2.4 cv=Cowq4X4D c=1 sm=1 tr=0 ts=6ad3a3b4 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=6xCJM4BY7YgkIKmfACwA:9 a=CjuIK1q_8ugA:10
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610170066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_093501_570039_FCDF59B0 
X-CRM114-Status: GOOD (  13.20  )
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

On Wed, Oct 14, 2026 at 02:36:42PM +0200, Bartosz Golaszewski wrote:
> Call phy_set_mode_ext() before phy_power_on() in
> qcom_ethqos_serdes_powerup(). This is harmless for existing users but on
> SCMI systems this is required for the PHY driver to select the right
> performance level - which translates to the link speed. This is done
> ahead of adding support for the firmware-managed EMAC on Qualcomm sa8255p.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---

As mentioned in the commit message, this should be harmless for existing
non-SCMI systems and I did not see any issues while testing this series on
IQ 9075 EVK, so:

Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Reviewed-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

	Ayaan


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
