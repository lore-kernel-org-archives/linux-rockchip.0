Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 489F4D25B6E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jan 2026 13:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgmOZLbgAhM//GYcoAAA95TWuEMCNso1Pc0u4DuvNRc=; b=MmKPgUkk1AcpLT
	Nh2IH62P7FZNR0HG+/6mYIdMipxvf45IEJRm/gdzICvzzyeR0g3h0bx0jucuXp0MK089ar9aLg7oi
	vUE4itnNi8eojtzTrQbxPH0SRTWz/0Y0Q7w1U5gmlIS5unRunPc6u3aLZwXdAk+VYp9Qksaoa+Foj
	yHm48M/TreFbzG/4TzkmochDtp1d6YdLHVh/QOw7+eUvqkGZhmzWNYUljv/WG1Cdd73N82tAJPqRD
	4HTQQgOqcUKa9G2oLdJ1CS/NSH+IuEQTJ6AbAfGir95hg0bqf29k2a0fteqT++BOcSxFgS43ysvWq
	a5O45GeLGnWJq3ON5jLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl5tv-0000000G66q-3wx1;
	Wed, 28 Jan 2026 13:48:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl5tu-0000000G66X-1UTQ
	for linux-rockchip@bombadil.infradead.org;
	Wed, 28 Jan 2026 13:48:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=wGMo0m1R2L9wwbTRPxCXUEgVOcQ6/Yw3wU/Y91P03Q8=; b=lx8qA2NTRP9/lLN5BcSMEX1LZt
	sTm52qfwgy+3vCQITMOME/K4VZzB5srPAIoH8ZJPNlTtu9noHJSpkG0Vm7l0qs+E73AvFfaEdcLLA
	sDwDblgvTIff1m8+UJE2yxe29qrDCCbLntEXb7U31Id8triUAdyZySTi/Vf6ydbF+vZVRFu9+KYgq
	Gp1GUwqrJ1VRS4DDRRDzzuCdNAgRY0AMe6OLGirPYEXBI8imQzw5C5+EZdA5G5j/JooPePUW9zipb
	SDKrXPqhoc42dqEkmSEWhHLaZeD+huJw76tUlkukPKZOjeIJgTIWyL7vS7vnObxMZJVj/MicyPmMv
	q37v3lcA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl5tq-00000008dPU-2a4v
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Jan 2026 13:48:04 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S91p5J3879105
	for <linux-rockchip@lists.infradead.org>; Wed, 28 Jan 2026 13:47:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wGMo0m1R2L9wwbTRPxCXUEgVOcQ6/Yw3wU/Y91P03Q8=; b=Q8YXT+QeY4P06cQc
	N/4uFGZiGouljnPWHr1Fr80N2Kqf0k01NRQuAeasyWrFpvFyzmVTsMc4hfLHsGjS
	kfY8MdWdpwixcVYhsvoE6Ep5Af5lLrcA1cGYd+LMnvOVUQGEk/czRmf2Q/B0FwRH
	2/daLG1us83CzfFERdEu+40Ibnf2W50lVoPtqVArBInciktD25oQBR3L95U8pGqm
	D67ea37JPV3Cmzggkv0n3HQhYkjW+M29AnE5rPZchNY5DUoeHoCdBv8kAO0MZ4CG
	7mWpd7mI830gRfF4o1taUUhf6H2YBqL4txuVAJKrcCrGFRP5M23b3CiY+Yi08O1e
	oZCHGA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bybyv1p8r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 28 Jan 2026 13:47:57 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a755a780caso7147875ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Jan 2026 05:47:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769608077; x=1770212877; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wGMo0m1R2L9wwbTRPxCXUEgVOcQ6/Yw3wU/Y91P03Q8=;
        b=T0cbaWKnTd60A9Tpe9A+jMYk0XH12cMDWwrwvdHUGiWF8nVMToYCZwZRXVH1zgGBdN
         Quyu6BCEBATY+jcv8Y5v9FPcZ+nZL1VkIzccAZ4TnIW4L1DLD6Ylg+o7lorEap4d7iT0
         8WGOt9kaRVG+OwIz4/UxAAuKdaOK1uqSgIVFk69mmJfb/6wLd7qIxiBc+Fxc7+H2MJ1r
         jGwjDbTNTSzuXZi1NODlM/aPHldMCpsRLYYM3h6vUuifZ+pyUkZT3jOC/TESvfQh1AFt
         imuBRfg0hFi00XhUcZjAQA8ycjH7hFG9joFLUyUJSbeTBhmo8g1VgjJOOYHNxn60dA3/
         MNvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608077; x=1770212877;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wGMo0m1R2L9wwbTRPxCXUEgVOcQ6/Yw3wU/Y91P03Q8=;
        b=JTEM3OjJoBmDj3J1ElDO8sLNPu+Jb6//qCmSMPtgoT2UBHEiaMEPdaMHK+BgTliVLS
         2qg9Zd3Z9V/9R7OQYD1J2Rl7YerwAEIex9ZLOhZxDY+10WlW9puRiwLr8pfh057yHE76
         HGVLIJmWf/NevLSBKXt4LGbtNZ9WFIDP2AjdhlqX/NKb7qWQuK5ogljTSLlcZjmF6PJX
         zQI2Rt+eN+S3jh5opTQWgPJb3SoqdCe5PSV/MVvdHsC2JH7OeIsE9iLGEnW7J+ByNJ+t
         YkDDXrDFy37j90C7L8v21BeHpQh6WZQdZTqh9WzZPvLuySTa96jAy13djQe8OQh7QzOl
         9NhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWHKiTTX0ZafotRl4kvc6QbaV7bFtesg84L3t411eFIj9Cj9pTWAauQ0Su7KpkGvw6dTgkyc/DrLmNXUttbQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwbWIKayImpeW2rhgadDDc0Tfe5w9IpTHhzRI1lW+vnkRvPxKVw
	OjVDCLdtfZOL8ZhfiCCWRIBsQq8AvmXbWQUfv8StjB2YRBmTGywLD4QVoijXx0YC/r/mWtLiAsb
	v+wv8JGUiFN5pgvJAONGI32VuQJk5THA4jxL8mgGDPRQJJ5BEUL6sdkaz9xv6wQnIMzrQs+zVs8
	I=
X-Gm-Gg: AZuq6aL32knXRJW7AIziWFiPBd3HyloHvihGZaH2tPgddnJ/agAGJowh8Wv/afyK5k1
	a2KsGulRVuU8cibXx+g5+OnyNon093md2/GhmxCqqiBzGZPAKl5ru6MihERZYQ2nzCza+OMjmCz
	W3Vp19hV79q059Xt0R7uDf4n7LFa6BwQKXgYJ4izDF80c7/vwz9hq/RnvNTyGhAIvb7yjETO1Lt
	IpZVLcLoDhfHGUebl3OTBH2cwlgthSCtcr4VA0hBxO6C9RfzfLueZB/0Dt6Me2+IXctcP0qZdIm
	tU1rHVhpiutwtynMcyXo23C+YAnCc+hbk34UFjXvTclYNpD6ef7QVKFDOwpY2DK8ku6888RYbFD
	RJLTFENU=
X-Received: by 2002:a17:902:f60b:b0:298:45e5:54a4 with SMTP id d9443c01a7336-2a87120f746mr50143565ad.1.1769608076677;
        Wed, 28 Jan 2026 05:47:56 -0800 (PST)
X-Received: by 2002:a17:902:f60b:b0:298:45e5:54a4 with SMTP id d9443c01a7336-2a87120f746mr50143365ad.1.1769608076044;
        Wed, 28 Jan 2026 05:47:56 -0800 (PST)
Received: from [192.168.1.102] ([120.60.55.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c45c4sm23790595ad.62.2026.01.28.05.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 05:47:55 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: jingoohan1@gmail.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
        robh@kernel.org, bhelgaas@google.com, cassel@kernel.org,
        Frank.Li@nxp.com, Koichiro Den <den@valinux.co.jp>
Cc: vigneshr@ti.com, s-vadapalli@ti.com, hongxing.zhu@nxp.com,
        l.stach@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, minghuan.Lian@nxp.com,
        mingkai.hu@nxp.com, roy.zang@nxp.com, jesper.nilsson@axis.com,
        heiko@sntech.de, srikanth.thokala@intel.com,
        marek.vasut+renesas@gmail.com, yoshihiro.shimoda.uh@renesas.com,
        geert+renesas@glider.be, magnus.damm@gmail.com,
        christian.bruel@foss.st.com, mcoquelin.stm32@gmail.com,
        alexandre.torgue@foss.st.com, thierry.reding@gmail.com,
        jonathanh@nvidia.com, hayashi.kunihiko@socionext.com,
        mhiramat@kernel.org, kishon@kernel.org, jirislaby@kernel.org,
        rongqianfeng@vivo.com, 18255117159@163.com, shawn.lin@rock-chips.com,
        nicolas.frattaroli@collabora.com, linux.amoon@gmail.com,
        vidyas@nvidia.com, shuah@kernel.org, linux-omap@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, imx@lists.linux.dev,
        linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@axis.com,
        linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org,
        linux-kselftest@vger.kernel.org
In-Reply-To: <20260124145012.2794108-1-den@valinux.co.jp>
References: <20260124145012.2794108-1-den@valinux.co.jp>
Subject: Re: [PATCH v10 0/8] PCI: endpoint: BAR subrange mapping support
Message-Id: <176960806032.58847.15614322725355216575.b4-ty@kernel.org>
Date: Wed, 28 Jan 2026 19:17:40 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: Rn20oAtpN_B2peGpw5qavyMOQmhAwkv4
X-Authority-Analysis: v=2.4 cv=ZZ4Q98VA c=1 sm=1 tr=0 ts=697a138d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=F3mjE3T3/ow0zpRzCzjSvA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=Ux4BfgyPd-WidXiTcjQA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDExMyBTYWx0ZWRfX8oDNqU80fAgN
 ey+cOjHCzVbXEe/M3PlIIN30E+nXTMhdu6vFQz2i4WyOcL5aqEVKt71ZuFKhhmFlEEd7UCm7LfD
 TO8T7pcDURn4DXivEUgYZBbuoUQevTBKJDc3xrFJErGFeCSH2IbjX4KAdeCEO4Lzl9K7JRFe5l6
 p2zXkEi8eh1xZOEGt4DgCBjEDPhDAIwIgkSDhW80ramxBUY4kr9V3odFO7hUpGaUhwq3yp5Z4Gf
 6nKacVdZASTxxm0K6vothlGysPHOY9GbpLREw3lFUk7GKpUHJpfO5OnpbOBxrc/thAecziADEkv
 rPJrFtU2SjGtGdWrLy/EuBSioaTA0P2JvVqM8YS+tNxc/2u281I6h7aAhYsvNlN9xo5I0te/CTm
 4AFUfofL+CZZMhCjntLo3g7HCJS3i09n1JGgmge9chdKac7TGYouBhm6HXW4zNmLc00ktiCnyNd
 Swtv6Hsv4BkoRO4IjXA==
X-Proofpoint-ORIG-GUID: Rn20oAtpN_B2peGpw5qavyMOQmhAwkv4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_134802_998275_13BF7E48 
X-CRM114-Status: GOOD (  10.60  )
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


On Sat, 24 Jan 2026 23:50:04 +0900, Koichiro Den wrote:
> This series proposes support for mapping subranges within a PCIe endpoint
> BAR and enables controllers to program inbound address translation for
> those subranges.
> 
> Note: This series is a spin-off from a larger RFC series:
>       https://lore.kernel.org/all/20260118135440.1958279-1-den@valinux.co.jp/
>       The first user is the pci-endpoint-test, and the real user will
>       likely be epf-vntb for Remote eDMA-backed NTB transport, demonstrated
>       in that RFC series.
> 
> [...]

Applied, thanks!

[1/8] PCI: endpoint: Add dynamic_inbound_mapping EPC feature
      commit: 06a81c5940e46cc7bddee28f16bdd29a12a76344
[2/8] PCI: endpoint: Add BAR subrange mapping support
      commit: 31fb95400451040050361e22ff480476964280f0
[3/8] PCI: dwc: Advertise dynamic inbound mapping support
      commit: c0f1506f63546308e894469ceb0f1fadbdf9d2f9
[4/8] PCI: dwc: ep: Support BAR subrange inbound mapping via Address Match Mode iATU
      commit: cfbc98dbf44d52738976f592f30c2ca6bb282939
[5/8] Documentation: PCI: endpoint: Clarify pci_epc_set_bar() usage
      commit: 7d857a3f517df4591d4c85832c4ce5aeb0ddc038
[6/8] PCI: endpoint: pci-epf-test: Add BAR subrange mapping test support
      commit: 530e3701a81b228c369261798ce1b7f63f5d6c08
[7/8] misc: pci_endpoint_test: Add BAR subrange mapping test case
      commit: 622e1ad5e49c6949dd8c97d71f609bd17cfb8813
[8/8] selftests: pci_endpoint: Add BAR subrange mapping test case
      commit: 0ebf8e7943e01b2c38c199228f51adbb89c02425

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
