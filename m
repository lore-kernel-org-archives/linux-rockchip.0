Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C8C2FEEF53
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Apr 2026 14:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwLMtR4bAzcnAmUse91XLapEZjPj9lv0+j9A5WPu2Ss=; b=jvJD4rerdnFj1q
	zjSpyc+brc1EyiFk5ahvAP+gfCSe5c38ImfyFcOcqjxYnm82h4k9QCY+1wruTIS1q7VuMotPG3PGW
	sFIExOy7v2ZSY4CV+9udeK6pYnm+Eu4pb9TDTe3HOxST/sKO65u8C0Y+Ji1XSQhff3SsT65zUGczY
	i/Y7cNSw9361M5n3hePed0IYytg9gjGS3SKPqLsMd0wTsm0di5oLByKNai2dzOsFuVmwZfPjkQPfk
	ZnU40EOQjwOfs6MPaDnp/Yt1ybs84qRZwAyedShG6Xp79u+gXHKqOxduitvF8PNWl51nVKJlIXTYW
	FQDp4kjT9t8YawKz0tng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA7er-00000006dxN-0Q1c;
	Tue, 07 Apr 2026 14:44:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA7eo-00000006dx3-36m6
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Apr 2026 14:43:59 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 637CecaN3536831
	for <linux-rockchip@lists.infradead.org>; Tue, 7 Apr 2026 14:43:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	00NWTnAGV7yhJd8/Q9KklSPqk81RRr1EXW2S+gNTCtk=; b=ntLJzeLGPTvhrN8A
	KfnK88vXvr4V3kMaUnRyELTWksVqxFt3EwUdwALIin+rSWejoZTnq95Sx4yZFyXX
	cpaOAmTHXlUI6WnREw9WNERNS6Z/NMAk84stup2KAm/HLTkv89nJbeWFmm9nUgh2
	OCW1iKOpd/CkrbJMUDLUCXiisI/H19Yoi0vUWIIgJTwU1An1p16OWXWIjBMBlX9p
	QiqUwtilSvDjBiZ7PjFfSd5q12dWeWm/uEUDUkRO2YiC9LSXhlAs7Kisuky5hgFi
	Ybqq1YH/EgHwBTfKZNXxN0E2thJkfaPDC1UyWZNZNjlY7uxFJ7MshuAVhLhawdFH
	EBXfYQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dcmra372k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 07 Apr 2026 14:43:57 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-354bc535546so4924895a91.3
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Apr 2026 07:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775573036; x=1776177836; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=00NWTnAGV7yhJd8/Q9KklSPqk81RRr1EXW2S+gNTCtk=;
        b=AEcHlb6GLY/AYZjovX+2vAWoDGP3o3y2Pfb+EN2lkqkEEznJQbevfSFu7c1nUUiTKA
         LROFmCIOGjZVmcEzokzkwMMlKUxC7CzPTHDw/jEPvlLAQs5u/9Nv8+TEoLcVIcmu2oPI
         2T/xgXgQ/JcNZ58tyurEC/hHewAmoRi3780FPhGBspPLMXiC+rt7krtLSx4c+7M3HPv+
         gxMaQ0lmI3wbTAjVGqOut5M4SojksKVHhS8LzUSw62KAZQN90vhNPoWQ2V8PzoIA7Bp5
         xyr/YmwC1xxN3tp+2yco8mZ4jrW4+6BFsRMXWwWZEMdLsNMVSTnGb8/UMPw7PFaf6zge
         UNMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775573036; x=1776177836;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=00NWTnAGV7yhJd8/Q9KklSPqk81RRr1EXW2S+gNTCtk=;
        b=pTg4tf2U/Io+qwKTu962qnw+dP/3n+01arDMoOyr+xrP1E2tPhynO0YA5tVKmjTXvR
         B61yVm0KdJTIR5Eigoymn7II6Mxy1IwArKSrTwC/VuKPljHJb0qvItCBoKkdF/Hlkf0b
         7cAlwvMDxGY+lIqgHo+ON3tRiznp5HoFkaba8c8mLnfOFFhNPRex45gZEEkFOhqpcdxs
         2Yzr8QDjcPZBQJc4EcUNz9lfDTyroREIWmLNYaVcwd0Tf2Ap7adIcCsYp0yehRbg9efP
         65kqbdTdxr9b0kboj0DHudfHwMd6S+X9gRhKtN5IvAy0d0DcE9CdX/5BkseqwFjLFRdZ
         dJ6Q==
X-Gm-Message-State: AOJu0YxQ7Sckaor2eVjdd5hBwtxwv4i/x8aHSjQUtoYEiMOoVtHPuEh5
	gVGRA4Q6Bu8SbUAeZcceAcYpMWyrAZi+Z88Wneb78thB/KC5HEqveX3MyV++GHUjdP02EaDxEUT
	k6CJ83bvcXnAopPKqSGSmydo3hRk3Lh8OeNwK+Nd+rYeJd0Bvv/+PsHfr2AKlvGeYmtvfSJJr11
	TMAzUZWXs=
X-Gm-Gg: AeBDietSFrZiSU6dcbGV6GEbw9IrEi4tZQdxkFVcyIq/7A2EI09QBpCgshgUz+JKXEg
	5ESH8bki3j7ii9PNbUNbKKW3bZ+y8+FZbus1nqa5JHSQfEJt3K8dvZ8aW4XpkTrkr5UQIdD6ygo
	l+r0wepaQNp/zMGtEilPP3TEkgDLPRpG03ojt4c+e+K5acevdSpu9u1iF6YdeLmxVCMxKkIx0/7
	S+iQ+8qEoL7McyflBKC4UpLBZowzst7xGjEMyqwwIBFGxMzBA45ABdEK+GZA4pHE20VV94Sy1x0
	s9QGCC7pNH25LzR5UNUUlGK/MjAvREdq9FGcJIlI0kcx0MyfosH7fFn95oAazheMijkechr9wp9
	mF7maR9st8GaDcSPGkFgd
X-Received: by 2002:a17:90b:2b50:b0:35d:a559:5c1c with SMTP id 98e67ed59e1d1-35de660a07fmr15496011a91.0.1775573036242;
        Tue, 07 Apr 2026 07:43:56 -0700 (PDT)
X-Received: by 2002:a17:90b:2b50:b0:35d:a559:5c1c with SMTP id 98e67ed59e1d1-35de660a07fmr15495973a91.0.1775573035680;
        Tue, 07 Apr 2026 07:43:55 -0700 (PDT)
Received: from [192.168.1.102] ([120.60.133.76])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35dd35e34f9sm17067098a91.1.2026.04.07.07.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2026 07:43:54 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
        linux-trace-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
        Steven Rostedt <rostedt@goodmis.org>
In-Reply-To: <1774403912-210670-1-git-send-email-shawn.lin@rock-chips.com>
References: <1774403912-210670-1-git-send-email-shawn.lin@rock-chips.com>
Subject: Re: [PATCH v5 0/3] PCI Controller event and LTSSM tracepoint
 support
Message-Id: <177557303192.289344.2616682402332241807.b4-ty@b4>
Date: Tue, 07 Apr 2026 20:13:51 +0530
MIME-Version: 1.0
X-Mailer: b4 0.15.0
X-Proofpoint-ORIG-GUID: Y4GGjC-nwBHH_OZhP0YvublUSGz198yu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA3MDEzNCBTYWx0ZWRfX0Ub5UBT4Weeh
 cd9VNNs3IqkFxngiIeBBYvQh5PVoPLOEx/Mfmh14lptMpV731BBbhqY/dXizpXpqqgOQ8TMqFaT
 aptf7NL9OfCTRDMxx9Ixau3g8d4mFxZFpT2ERPC279mFKr4ObPi788SEv0XJk1bcGC7ZV8IjsC/
 oTfwpu710yxSuflP/LeTFYaJ3694/ZSMjYLpNEF6CZBYc1SSCa5U9n+PAj42Wz/P/wTxyJPI07r
 6Ur5oNnfkuluQa618bvb9bZJMm+UY62/Likt8YlnOHB7QaxIG0apSjD2qdw+0s2osY4drz0doks
 bWvXjd5PcxmLMe/nAJxaGnaoNItAA5TBMJ0fxeMlPMVWCgfMgI0U4c0tICeMZBZCTyJ1129yAlj
 nGZW+K/AEm/wT6eLEJM2tWKIuTifNLfa9L4EFWQIUL0Lk2LX17aD/7OvD3Vgzc1/4ThLBNP/pkZ
 DLYlaOY+q2UO5SB6xbQ==
X-Authority-Analysis: v=2.4 cv=BKGDalQG c=1 sm=1 tr=0 ts=69d5182d cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=yDxY/ZQAnAaCL67VaoekCQ==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=QCXkDXtUJjd1gO50qw4A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: Y4GGjC-nwBHH_OZhP0YvublUSGz198yu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-07_03,2026-04-07_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 clxscore=1011 bulkscore=0 suspectscore=0
 spamscore=0 impostorscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604010000 definitions=main-2604070134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_074358_793036_148C9117 
X-CRM114-Status: UNSURE (   9.41  )
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


On Wed, 25 Mar 2026 09:58:29 +0800, Shawn Lin wrote:
> This patch-set adds new pci controller event and LTSSM tracepoint used by host drivers
> which provide LTSSM trace functionality. The first user is pcie-dw-rockchip with a 256
> Bytes FIFO for recording LTSSM transition.
> 
> Testing
> =========
> 
> [...]

Applied, thanks!

[1/3] PCI: trace: Add PCI controller LTSSM transition tracepoint
      commit: d1b7add89c004295cd48d7cd49946ed5cb5cbb55
[2/3] Documentation: tracing: Add PCI controller event documentation
      commit: a3966a6f915ea7d1af0941ea26848d921e574c45
[3/3] PCI: dw-rockchip: Add pcie_ltssm_state_transition trace support
      commit: a276c0d802d8d2a22088b7919d9e82e936995cf4

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
