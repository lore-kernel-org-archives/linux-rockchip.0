Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55121C5DF94
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2026 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuurNRTSxo6npH4PGTkKuPCaospYDwKaXG5pXi4kfj8=; b=cUgwcq5mhloO2f
	y6G4eZ0ETd5d/auKjrpWyXvcy8mfwQ+0qABVZx5W6OIPb/7QyHIUrsfsKSAmkOyH5LIgWZ6ebXPGw
	rN9xMpPaM05o+s05NkE6JcI2qL33ly13VjfgOFZ6SYRyhD9Glflqfy9gQtyq6VWrS1xOPJFPwTUIc
	axbK0TDE/G5tHV8i2TnHhQZsHoMbGziJcbzPK+hwKBZMeGuFitsJ7Yv8p2k0UyoiTgPwHMq8UAlaW
	t1QqCFWCemVDMf04KqEYkWqT7fJt9NcIsUV5DwEoovup0Cfv5WgXMgg7aAOYwv9/DbW6S6hySUcGp
	jMPIZdb9AJYAFwGKK21Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyStf-0000000GW1C-0Qaj;
	Mon, 24 Aug 2026 11:31:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyStY-0000000GVyH-405Y
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Aug 2026 11:31:19 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67OBMY742648056
	for <linux-rockchip@lists.infradead.org>; Mon, 24 Aug 2026 11:31:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uhZFMUq0G82N6cZ0jr/Dp8Ye
	4zJGl9JW5FIR7tFFlKM=; b=Gklqmwlfj9AzCkg/arOvToonrhf0bYY/rB+R88JX
	3w6WMi/u3Bi+iyuC5Z/s1CKgJvg9H3owZXmIpgfVN2qfyWO/yTvkxz9y8/Qja3ym
	liXTh6B+i0GkURoYSqt1egIKbsIjuYTVA4S2GymUThJ8m5yB4V4SuJAyhCNKzcrk
	cKoJk6hOpg/1VjmtI3TJ5U8NRRZ/Lbjalee64MB+/jjtG4LUjwHDfXUTHqZcCyEF
	+6hdoRjcq2ZOLtDL/ZaxPCFkoeon0XzTv36UH2wNqls/gmvgz5j0gGi5ukR/L8Xw
	N0xB4JnHmryBkKdZPwEGkkxIvj2IL7soNYf8wZSDCl+4Ug==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8gqn97ub-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 24 Aug 2026 11:31:15 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-52769fc3f2eso47699381cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Aug 2026 04:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787571075; x=1788175875; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=uhZFMUq0G82N6cZ0jr/Dp8Ye4zJGl9JW5FIR7tFFlKM=;
        b=Wo6sXe5U3cWicc7wiOpES/tC325t3kTTY3vAKC5mdXc2RQpKDk8Fs7nXQYVmvvAZW6
         NumuflsSAtcxvd08bkJENn+m8lInsqHIxYBGXYlcioGGn4d7MKDofUMpwp0iSqnLoE+9
         /CD1RvuWzRSJmsJktf3G6LO7bgvwmjKkgpslrL9TiWpLmDWdt/xtKxkdgBFU8QEoCcUE
         jtvtVvqPP2DUfdEtXofYWkIc43COyrIM7a+RaLHwin5R2Kvxjk1T1OS7dNqDtx72l2nn
         oiQt/de/33mBVa0g+Ghe86UwwEoGPde8EIE/U/eqV+28uPvNlepU2jWIJmSnXq4wXNgw
         wThA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787571075; x=1788175875;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uhZFMUq0G82N6cZ0jr/Dp8Ye4zJGl9JW5FIR7tFFlKM=;
        b=H+NjkU4He9ELxMBhF2u7xAhIwHsqYza1gP8kBtakKUKa8AXaNW/F/mByhoSsWNLpy3
         BRgUseyH3P7YWm9R9O7J13SFpXczZttEMxbV7kwt891oxHPZUqLLCXwRHPU3hUt+jA6a
         xRE0OJAy9+KQ7MJldOeiGjZhD2K+uPP2AF058FS7NH0PkGnwn7zUil1R7C/YeSlWcEFP
         R2+TSZdAIZUJYKyCzGaVOvPa8bJy8EKQwlqK+ksyszKHaxyKnqnQZnWVYvxie6ov6u37
         ZsO5nBaUEAjRQq9sGBuP6IRdMrDplLNSs+sgW/9SD3Q30tjhuDEVMWGdumcZNf+5hcP/
         vqkw==
X-Forwarded-Encrypted: i=1; AHgh+RoyPMkDAjC+h4PyDq8LIylVhErVw/zhlrqbhCYam9Qj8kieGj3aExkERGze3uvQ/cSDK0xO5lURT8KuCJWhJQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nzmFuiwlLPqGSLjSW5oTN4Gend6yWpfECSXpuZubKTz4CTrGWw
	dIXZBBICNYrlHrjrweyPs6IhYm7NPoOzkR8lWUQlvyk1g25Q9RpQDu3ztRO9PNH4k9BpXmpK95Y
	gScn38b1GvW0/Vekface0n1n2/DQ+RRjsP5UMsu4I96ww9wCVXNSOxQ+/RMhCCmm5p+w0K/xfl7
	M=
X-Gm-Gg: AR+sD113xhE5j9fSZsgmJdOw01ZoECIDdrPbwAa7E6vbheLReqBWcRhpAHiKbxA+o5e
	+YO/Do6BL36R5erRuUpdNo2iRjNJlyZ2NfkTGTKBc/yxQUGLlIDYvfe7pASPoWwxY3vc5rJWWE2
	bFNsJ5QDD+ogrG66mchWjL3aN2EMdkSfDee8PyWkmLJQuf1vX/n2ePUNBDzYChMtdiPTwQz9/Gy
	A1lGv+fdlDEX8W5Wwqd/s6AzxkdcgSrK/1dwuoTYolMEOsEcEeGPeLx9BKVB02k3hwqKul1aaEL
	sNoAgZCUBl5XSMRlpMglyJ6KEMb6q6inu0oN2K/fuPFMMaQ+b1SnxfuKOcc/V5YRXrrqsOUT5DT
	/c3cN2zSNd4idv+o=
X-Received: by 2002:a05:622a:4cc3:b0:51c:ae7:fa1d with SMTP id d75a77b69052e-52df56e10f9mr245521001cf.5.1787571075032;
        Mon, 24 Aug 2026 04:31:15 -0700 (PDT)
X-Received: by 2002:a05:622a:4cc3:b0:51c:ae7:fa1d with SMTP id d75a77b69052e-52df56e10f9mr245519981cf.5.1787571074499;
        Mon, 24 Aug 2026 04:31:14 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.240])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2496738e7esm1342927066b.46.2026.08.24.04.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 04:31:13 -0700 (PDT)
Date: Mon, 24 Aug 2026 14:31:10 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org,
        will@kernel.org, robin.murphy@arm.com, ulfh@kernel.org,
        p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com,
        royalnet026@gmail.com, u.kleine-koenig@baylibre.com,
        chaoyi.chen@rock-chips.com, diederik@cknow-tech.com,
        alchark@flipper.net, dri-devel@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org, iommu@lists.linux.dev,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 08/13] pmdomain/rockchip: add optional per-domain
 power-on settle delay
Message-ID: <dn5vlrxg2vr64d56mqibriz5y7ebeqezkv6f2aqf5qd2gti6y2@ohdxvj5dnscc>
References: <f1805c2bce56c89d8ace35f67c665b24bab90965.1787568944.git.gahing@gahingwoo.com>
 <1b89eceeca92f7857d26c5d2097bea2bce10eb93.1787568944.git.gahing@gahingwoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b89eceeca92f7857d26c5d2097bea2bce10eb93.1787568944.git.gahing@gahingwoo.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfX1XHUuGdopu9E
 he6eRVxS2yMA1uT9wcoXcl7L3gq6wIdSx4TVKC3nlWmSP6QmkW7PMHQpoEjm2WwjniCACePrelA
 Y3b/19PXD12BZutHC39eB1Ct0Os4WaM=
X-Proofpoint-GUID: X-AHR51xnibbyhyQ_1iFIcRMUJ3fLH1T
X-Authority-Analysis: v=2.4 cv=fqXsol4f c=1 sm=1 tr=0 ts=6a8c2b83 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=wUpz7uCjLrEXi01cjX+DLw==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=9GNsruGHAAAA:8 a=EUspDBNiAAAA:8 a=lG5QNMjPvMxfgh1q_X8A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=gf-oSkQAjqHFJRp-GQfY:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfX1DuGGa0pUKvN
 v9/+KC5oV0+E4KdlUs3EI4Da4C2Li92mrrghDLpaWVVbf/n5lXvZgLbPjMSn/693yaK3s1i8tI7
 jDNbABr7I7xG1gETUw9WSKOlgM3jXXK7USGoi+fLpBycDSFSGM8d+8zOgYzctha35FDvBkuJ8Ol
 EFP9NIzfs9thXLbgn0YHDDzBSijkMz+gcAwg8fwbt0WyJUtP7PunfjGt9RATdkz3agVVirimwfP
 ZoPTa39kR5oBlQ7epPRvJ3af4Tl+y/w0F1BxLBVJKG+gH4iPmn8jpEUsYpmHjE1nHBKBc+aEqqb
 5R1CPHvzRUe7ha8yem9GHv1lg88zaaxF/3Ao3VNF4KkvUdEfw8DXFIreXCqzA/f4lWeD2Nso5JF
 UDGufeW48KWLDaz6M9hL5W14/XNAM6RDnNUAABFegIeIQ7jPkYLt2DK9ivgjNEYe8w7og9zfa7c
 iPjAcIpnlRT5l90LHtQ==
X-Proofpoint-ORIG-GUID: X-AHR51xnibbyhyQ_1iFIcRMUJ3fLH1T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_03,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 spamscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608240096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_043117_110322_CD33E0AA 
X-CRM114-Status: GOOD (  17.41  )
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

On 26-08-24 23:08:57, Jiaxing Hu wrote:
> The RK3576 NPU domains need a short settle time after the idle request
> is released before the registers behind the domain answer. Without it
> the QoS writes that rockchip_pmu_restore_qos() issues land while the
> domain is still coming up, and the NPU throws an async SError on the
> first cold power-on.
> 
> Give rockchip_domain_info an optional delay_us and wait for it between
> releasing idle and restoring QoS. Rename DOMAIN_M_O_R_G to
> DOMAIN_M_O_R_G_W, since the suffixes name the fields the macro sets and
> this one now also carries a wakeup delay; RK3576 is its only user, so
> the old spelling is not kept around.
> 
> While the macro is being rewritten, give it the regulator argument that
> DOMAIN_M_O_R and DOMAIN_M_R already take. Without .need_regulator set,
> rockchip_pd_regulator_enable() returns early for every RK3576 domain, so
> a domain-supply in the device tree is never looked up and never enabled.
> Add a DOMAIN_RK3576_R spelling that passes true and use it for
> RK3576_PD_NPU, which is the one RK3576 domain with a rail of its own;
> every other domain passes false and is unchanged.
> 
> Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
