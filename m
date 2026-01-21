Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A047FD26296
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 14:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRwlMxbIt4kDHhhPwXKzJgiYWpHWnbD9PajOF9CbJUQ=; b=VXYxg6Nh+w68PY
	QWsKbuKvDEdaqGskXryzTo78p0zX2D6v5S38AushlUsVqBhOdCdIARyvVPQabboh6COauOH+jPm6t
	b7ZHHBcmHog1/BNA3ZcpljhIQxSBnbTBPgRux+R7g4BGl2ZoYcHoQ7CYjzEKOO1IkY4qHpy/BMYFg
	NFthOfd+nGyywKVmPzem6cx4Vx20bvu+An4LiP+ahq8/USZ3GFMP6/VgLZQNpiUYdZg5Xfi4Iz/TW
	+GgVQ5yuNOCAvJNne52G1D9JR6TMQwd8HYgh0AVDglwfEdVghKjfTC8aiUZAPlW/lxk1HJBmUl7ze
	hXV3wYi5qxvUB1P5O8Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viYxG-00000005ZVG-3gDM;
	Wed, 21 Jan 2026 14:13:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viYxE-00000005ZTe-0DWT
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jan 2026 14:13:05 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LAmomo3315728
	for <linux-rockchip@lists.infradead.org>; Wed, 21 Jan 2026 14:13:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	umBEj3z/LESlnsW++p+V97CniCnqNLSsVrUC3L6GHxw=; b=Ugw2eKxghXbWq57k
	215Dyw6LYJc+NbVOugKInb0xA/l0Q+0qSYLz/ARyaFO6cee5iZsob9lATGXvg/W0
	ixVg4UaSnlH3Fu8cE8iA4sO/jGBRBGcvS0ZUGnRoXYgzA6Ir2FVlegJMr+U0/GbG
	Xa54Zcizax98t3nY8pSR7RfIKA88VaAdc67XfNQTcL6DLX5MWAuOwyInAOM8OqXC
	XqXtZCFDwsduR3bXQrTKuc6C6Vm7NEj+Lu44F0L6+fvC7Z/HCGORwf1SR9A8n4FN
	JVfeipXAWEl3aDsfQnlSnEakMyH8QHo0HqXhjl8csT32QoZb2KHtJGWc/ikbDdAf
	q2JeCw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btwcjgk8w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 21 Jan 2026 14:13:03 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81f53036ac9so5121640b3a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Jan 2026 06:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769004783; x=1769609583; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=umBEj3z/LESlnsW++p+V97CniCnqNLSsVrUC3L6GHxw=;
        b=T8C/ZPpMRacOGMskfdzkn7srUfdIjHPMYTGFCWLj+0oJR/HEJoxz3Hb4zSBN1wPHUz
         Q5ABnswr/AFlrUu5amjsywf9b0bS7IysAdbUd4E0aMNJTwHgdRlWkoUTPKwXJXLENmoz
         bPmiXfPSD/uqkjAGld7fu9uybtEpkkU7OY6OsIxs2p+r4hhGIepMwPCUSk3Q0QiGNAie
         mZE3ajBY6QJKfXXeh5s6DYUsMeEG6BtLyhYl8u2XPDzTgyGvPw+s6qAYREc7lXT1KtR0
         EDS3bIbggGChUKIo3lLu63xGALAm5rh/2uq32/hm0jE0PVYhcYwlqGaVatsZC3ncyvOG
         CMdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769004783; x=1769609583;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=umBEj3z/LESlnsW++p+V97CniCnqNLSsVrUC3L6GHxw=;
        b=Hsrpotumr9Z2QqmOm5h4xzENEVp1tSmJ58LWvSjsY19Dyi1FcccTSPNn67eDRbJMVb
         n3flm5cwt+O8LXBrjhO4RGNSkMM2Fpi2nHsSN7wHFjz8b2PyFznFErYMMdgt9YVd04oQ
         8Z9fRAmio8mbewRdc7RQ4O0eyf1hR7d+u/EhnmbJEbVBXjv4jmzf1OgTJ/wA+ynZ6W48
         beH2qBh7ZmTjc4DajniXy4B98HAIy5NKYiH0rgvaU+RkzoKWoCKGua7evB5kmuitQMdq
         r7lpc7NWuMfGwaqQbRr8oWFtDUNHI925AdKZ5eUf3nAmrkedGZwIbu/alk89OThDd9iC
         jOgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXv+nqtcMX4z8yxj43/W6L2OhwqNRLnse2OIUAwx5QYr4im94y9lDCOyAP7VSbYYsk3CLBWaxXtZ60D6UZdfg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7kiMam6JnmNMrixhQS8aP2LERvxSAOGVI/El+aj/R3+hEGpxP
	0jMAZ9vSC3/BUWV1h09b+0TeyQIkxR/9LRay2wC1J0bpYA8mx4W2+zz7wF1+YZcoru//iYO88JT
	vlNd6Dbw1loGCYw/izTjs1YTEnebw6z6lcM3YcGUKiZRFt35RZzgT/Vatyd3PFQzCHa1JYYF8J2
	s=
X-Gm-Gg: AZuq6aKJap2GoNGHqegPpFXfcG5lQwWXAFShF0bQdg2krA2wnYswokNGv5m781tdPP2
	h4D5x7+3H2E5KfS/jCP5qO1CGAKvH9+8h1rLeg4lKBYSFl+40fHvRzFSKtsJ0ATXac843UExVDh
	y0pLM9WcBmd6QJU/nAChvz4s+EL4Fok0aNKb8P7fGELpVvu9TcBLx4nnIvlQgZ8cRiZc2pkmL9M
	HQzDML8oxBowzYQVoJRvoqAMisf4eTK1sbgN2zOfbiFx/x1BfY6QT/EW70JujYTTOy8YAafjng6
	VHckfC1hWQc9iTup0lIG1ijBfyDJX6OWWOlsXQLOm2CBpwFLNZIfwau28YRSh98tESNI8ZHmpMl
	mfS71vDz0
X-Received: by 2002:aa7:88c9:0:b0:81f:4e0b:324d with SMTP id d2e1a72fcca58-81fa03483c5mr17030951b3a.69.1769004782625;
        Wed, 21 Jan 2026 06:13:02 -0800 (PST)
X-Received: by 2002:aa7:88c9:0:b0:81f:4e0b:324d with SMTP id d2e1a72fcca58-81fa03483c5mr17030915b3a.69.1769004782025;
        Wed, 21 Jan 2026 06:13:02 -0800 (PST)
Received: from [192.168.1.102] ([120.56.201.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa12b51d9sm15252753b3a.65.2026.01.21.06.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 06:13:01 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Heiko Stuebner <heiko@sntech.de>, Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>
In-Reply-To: <20251224-remove_dw_pcie_ep_hide_ext_capability-v1-1-4302c9cdc316@oss.qualcomm.com>
References: <20251224-remove_dw_pcie_ep_hide_ext_capability-v1-1-4302c9cdc316@oss.qualcomm.com>
Subject: Re: [PATCH] PCI: dwc: Remove duplicate
 dw_pcie_ep_hide_ext_capability() function
Message-Id: <176900477438.343515.1230699650351022573.b4-ty@kernel.org>
Date: Wed, 21 Jan 2026 19:42:54 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: JYphf-yRgzNA9Wb5-QBzkHTpuiaPnxDh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDExOCBTYWx0ZWRfX+zSWkbthOssN
 lp8OF32rXkspOdvh/zI4yxB9GgbiyCJdvtj++Xc+npPHZWtBIHVFfQG++IriBb5iO1d1se6fpX6
 xzOj8CgdAWB3EvcYVIp5FnPkenXrFI2D4mBs8rBv2XVF5DUwVFNapbsidp+eAXp75Y2TqzMawNM
 uH0ngBNmspTx6fu8xQ03TI1yvUMartVxgmh/ZRDxswRuMzSs4ZU4d85a15TLyufdO5YpsAMGyMw
 /q6FCm2OK1aXtkqLQoR1zadtW3/TtXjxxnbHZ2WRQh864wCqRVJK2QJ7aSXpbxfsBsGObEAImh5
 Ls1N8xid5qh9iLJfhAcNEBtLUKV6iwmpOci+F7vya3jtV+U2eHO8WYeSQ4xmGB6HxAqaQTJjeiI
 WUP1qOR1R+sbr/EZDVugYanUe2YR+hnf+Wi5jMWjWpfaW+nsVdrdOmFWFmqe8X6ymJIhVP2VDDv
 HVgmWk1Y0+70VqPO4VA==
X-Proofpoint-ORIG-GUID: JYphf-yRgzNA9Wb5-QBzkHTpuiaPnxDh
X-Authority-Analysis: v=2.4 cv=JpD8bc4C c=1 sm=1 tr=0 ts=6970deef cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=o3iIPP6MwdQAWb28Nvg98Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=bCJlsGfofW6EOh1BOmIA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_061304_270638_C0992BAF 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
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


On Wed, 24 Dec 2025 02:10:46 -0800, Qiang Yu wrote:
> Remove dw_pcie_ep_hide_ext_capability() and replace its usage with
> dw_pcie_remove_ext_capability(). Both functions serve the same purpose
> of hiding PCIe extended capabilities, but dw_pcie_remove_ext_capability()
> provides a cleaner API that doesn't require the caller to specify the
> previous capability ID.
> 
> Compile-tested only. Runtime testing on RK3588 hardware would be
> appreciated.
> 
> [...]

Applied, thanks!

[1/1] PCI: dwc: Remove duplicate dw_pcie_ep_hide_ext_capability() function
      commit: 86291f774fe8524178446cb2c792939640b4970c

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
