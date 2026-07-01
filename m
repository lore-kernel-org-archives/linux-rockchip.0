Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BFF7C43327
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 10:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCYJHMzUKvspbRS2BKr37I6G2qcPHoAx7mBO6Dk792s=; b=mym914WJzoysa5
	gi0+fpHwpoN42SM2bQVFQniglN/u//ervkM/+e/5UO/i22SMz51fZXHy6Y97+WFoYcKtWAJoQK7V4
	ky5yJB4+/zaYQvSe5vpwUPUb71oOzoJTufYyf9VFNP0/6eFEaQVNLMTF31W6hyuWtUca1mVGB8yO9
	o90eWYus/AquibM5eIymdl1q5lYFzCPuCF8ExMG5kRRSkCYFvWdsGaw2sdQcCwF8hV5v8JXGfscBn
	JQQPXaIYDXI7HoU6aeTDenNAVHeALmQDzhWFvoDzyplVn23E5JpHOgaGc/CsbDSWNwBUJRnWuHF6M
	N3zqyTmwfVbMNr8rx6lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weseo-00000001OIR-0Qki;
	Wed, 01 Jul 2026 10:59:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wesem-00000001OHI-33J6
	for linux-rockchip@bombadil.infradead.org;
	Wed, 01 Jul 2026 10:59:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RZP71cCTtjFAT7ABrPSL1FD1hgHY+ifVGUdigE+dsC8=; b=E7SCs936or3Mw/EONt/acPNyOm
	gwihAOQaoYTzjxQDtev6sDhokUEIKTaJx+cZuO9cAcU61l4Mv6gyYpjMLeAZ+LR/xJMfgsk2QZCyO
	d67jWgXB3pHMdHuuHBwdz5QqHyZwWA2mYTddZ23wBcYF7JLvzPnrskWT5HpoKZuqXOz/m/OAB48RQ
	iuVpyp09Ta9oIznoTVIakVwUEh45MRW3u6fK18rsBGGHe6BFZEhoZpztoimuYL2rgER2abwUIHUlL
	i8AUaZd5DQDJQNTcVEidxSkZKDYVfQjV4KAV+J0uktCqJR+U3i/gliMf0zq0I//Yic59mvsCUcVVc
	aV1mc+lw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wesej-00000002eWj-3Mvs
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 10:59:03 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661AGEkq793722
	for <linux-rockchip@lists.infradead.org>; Wed, 1 Jul 2026 10:59:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=RZP71cCTtjF
	AT7ABrPSL1FD1hgHY+ifVGUdigE+dsC8=; b=fPyuabJqhW4sB6R/PCNXbeQfFct
	v28johzREnukowS/9kAUPeY1Lnf1WIMrXxzJ6xRj7IV0UzBP1Rm9X1BHYO2DZoRo
	jRCDsznbWnHdIypLKqFHbFmIs+q4zhpjmFakLVIbd4z7ZzRgxqDnTB56WUjRTnnM
	4cUL2YEFofMwgpcRkVwHFYCuP9yGLf6TJp/o6Ly2s37YG3SDFaEHfBe+GE8vwLUk
	95rBDQ2wgPZWxNjvYzXOMQkuZuz+kcUgdve/ClNV1mWiAfEf4c2h0UhaEcTDyivj
	jYA9qhnmLHrClhwjk0c30BhzcIn2nhULkh+F6W2Vtz6wAc/DcCKM3iVKxsw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f510ag63s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 01 Jul 2026 10:58:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92e6a2f5995so94783385a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Jul 2026 03:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782903539; x=1783508339; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RZP71cCTtjFAT7ABrPSL1FD1hgHY+ifVGUdigE+dsC8=;
        b=ZtTsarROPpdt1opB1DaclrNDKiSbqB1y/ukDFdBtCWIhSUZT7wbYsmOHCAwnwr6BcJ
         vWlMlVISagpr9slTE7sxM1eJAI78hioBC1pKnK9WVFouhWXjYTx9mguw3knTCJakmGFN
         6+SQgJI61iljRZVEfFh4LdCCtMk/t4Hi0bwvHWNf7ur1o9xilV6QMEDLxbvs89Lm/Jn0
         zNCi6odi4rcEGxJdQIVpESLqiaNihd3Qj/JAgX0qaMRXmGLnWNXdTF5ctEEzMROnUyz+
         /3/uIZ39ejaZockzs5vNMvf/+3l1metK9lXu9p7eR7a7MNGB92ZgCJlj4Mvv5pL84pcJ
         3log==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782903539; x=1783508339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RZP71cCTtjFAT7ABrPSL1FD1hgHY+ifVGUdigE+dsC8=;
        b=PotubLa2PF74hafDPKJw1EjAMKXyYmNh+hYvSIvymBFxqCltLupvROuvror0t9Prs7
         9vYyaoTwgoRQ45GpALgcMSem8WHThECyA74DbYI7PbKiTdX2rmBEYsXuWvqk3Xbd/5a7
         oCG2JXHlN7+qX+ZlxQ56Bq+Anqr5b5arfY3Myzwgjl+Gi9Y13fpkRN/C776AhcauXOzc
         B0rnm/4HbvKNV64QLYHAdm9VmVDV5MLJi3hka/MZzqmJRsS5vxRJTD/SZf57wY2ty9kV
         +x0i7NdjLkmZUTH59DzCiob8eXRcpW5f/MZXd+v4y/pW1IwZaaRmDhCAsQZ7suLcEJ5g
         Sn/Q==
X-Forwarded-Encrypted: i=1; AFNElJ93fm2z9JANk69FipSBamXoX6RAx3SDDIDmzdJnQzU0jaLy/dmd/ZfuErRfrthRD94JqrYGMuA968hJ2i6/gw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxgLRG+x2hWIvVGS1tV5yqolFadB0wYQujJCChrq8VtNvSzj4eg
	9i75ixNXXM3WVie8LprEVaDdpw2tMNKXmXbvIO+eYBxXzBaLR8JUeGiW1m65xdJ5SVKEkK1ML77
	/CiJ0O78kaDEh1ndObNIQPj5mdCw7YT+ZTfA8hI5a+TReWMxbVR/796JTfulFm4U9q/DtZ9M6Jn
	c=
X-Gm-Gg: AfdE7ckf7iWLB3wBdcxJNyYY29/AgW+h0s4q0Z38Twyaiboxrncopz5Ak6pwWTnzGvA
	cHrDg6e7D+FpOzHVraFgZcp1VVVaj1lMLG+YRYuxgdCMir/e91OQUx7UTwZgr5BoC+mPpr6K9EL
	nRFqt32qgmQMO+lu6gV3KTdgN6ymif7JeCwsUEz8VVZBpDpqLZP1Ya1RN2Fi8Llemk0AkvJFGex
	NnBQ4NdqIAa/3pOX2HVox0cv1Aqqfv4HvPOYWVZGHsXxRf9aXnSO00Ney5UFkHIIUdSxJaQNrLV
	G8Qg7BKG9JruuZQipt6iec8c98N9Q9xaWcHk1oiPzbIp1HeVFdj5dJkL8qxFKOvN6APy4ucQoD/
	xMSCdjaf4rAUw2YIjZiXoSqLCugQ=
X-Received: by 2002:a05:620a:468e:b0:923:8612:f15 with SMTP id af79cd13be357-92e7823fc78mr134301185a.18.1782903538978;
        Wed, 01 Jul 2026 03:58:58 -0700 (PDT)
X-Received: by 2002:a05:620a:468e:b0:923:8612:f15 with SMTP id af79cd13be357-92e7823fc78mr134299485a.18.1782903538589;
        Wed, 01 Jul 2026 03:58:58 -0700 (PDT)
Received: from quoll ([178.197.223.174])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c0e92687sm33275565e9.0.2026.07.01.03.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 03:58:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Elaine Zhang <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 2/2] dt-bindings: rockchip: grf: Narrow allowed reboot modes
Date: Wed,  1 Jul 2026 12:58:51 +0200
Message-ID: <20260701105849.197086-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260701105849.197086-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260701105849.197086-3-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1298; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=CKhIr/XIg69RF6pyT8Nxp1+2IRvTyjEQEEoYXrd4vzk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqRPLqT+HVdGxTyuJy8eAd2Wn/Uhlrtj1ovCLM7
 BMUbZ1oUgiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCakTy6gAKCRDBN2bmhouD
 16zcEACXyQvU8T+J2XLmlZsBMkv95lOYp63lNjg/KDmsamJNi8lYJW1Qk8ivFzChnUXr0WoOXqs
 W+pe1tO/n2h0YO46JNxv+TYi800gp/BRU0GFp0hjmKw7EHGe4Q03K3BalxH78Qs/BNFhjbXWvSc
 E0GaH+/CNbqqKJTWVvzLCPcmcX160qolrYphYRLEpLUv9BwWfPlwFo0yzRHwdN6eMTPwfevUNuX
 N2gVVSAMjrjBMw9BUzhswNNEF3pGFtonJAJa6AGotkPfUXSrKnZTStOAgoOGUe/DNB+2tmDpab2
 ep0+URrhDd6Ceqcne5xIR/DzQtLmJQIC0ffZBn80MrsnTdF/9EkTNmIpE5Is4s8RLE8rehky3WJ
 IPzgQiT/6VZdyZPfYz3fJ//+C0ebjWg6IPeXRVxzvJC52f6P5ydArAvanUUgjjVkU3gWM1xIGaz
 P4zi+aeC6Y7ZdiQxURrPgJgzqCpJrQCV2k1Ty3/0MNPybKjFtdStOj3aIL2IBNqUFnJ0I5Wad7v
 sU3/WsfDxh+dczj9SAkVrlJXPC3rWX4Zu6DiZZ5JbRx+6S0QO2sj63AyU4XZm7wpCa2y1GpyObT
 bRRauSCLf+gB86D8whCr3Qtq36AebBWRE4KCWqse4Na3VJ3/Pq219sfDfcEE03E0f3fayW9GT7j TMb8dsW6NcipuFQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: E1pWWzsu_257KAcX6ird_AR8oX8mxaRG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDExNSBTYWx0ZWRfX2DaGXq/rkdOd
 b/jRiAlJRCEonRdnOZuEd52LNrf5aqyYBsIJQg1doN+cRRqeTLcEOC6FyMeguRO+GmRHMUhlP2z
 EJbAevaOsBrWYm5Bakcr7nhOpMxXfCMRQrKo3/6edZORO7HZOu1OS9JZ3SfuGuXi063w1oCv6KG
 OyxqrLcJ681gnGotBBHa+dhXgx3tky4ymqMK5Dc9G36gCf0lWBbiGX71EWAxivUYbFQ4xewj2YD
 liNBJe7E/5ac+eJLdFVHBYIQhfA+gab6Vzdy3lquApxUJWvsn214LuMVo5+yRZLwAQuQqzFR/mW
 5LvDcV1NRZ27ehi08Ikc+MMxeWWWIhRa1ovmxwuTHZ4rWrlmYTb1/nyjORw97qKgJe7t69I9S8w
 ooFgOZPE4GAaTFe1DEz+coL14wkPDBvzbIBg7zgN6quFLBKGZp9PxLS39052zBKqd4SavsTKL66
 3+ttrZ3KmXZQBKp0vzA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDExNSBTYWx0ZWRfXxf4f7qUdu6nT
 mjsyumKH3a9ptkUYSmpDNgeIsjAxLQg7+0rd+1/M0iiFkWPActxcWK52OfUyEZygpPXkzogGkLe
 6fhCKPO2WYUvkMws2dt9Fu9CX/Q6LHQ=
X-Authority-Analysis: v=2.4 cv=JpXBas4C c=1 sm=1 tr=0 ts=6a44f2f3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=N6niishs+lR9UBL1FN3Qrw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=uYWl5qKCkACiJsL7rIEA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: E1pWWzsu_257KAcX6ird_AR8oX8mxaRG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_115902_222899_E41F1D54 
X-CRM114-Status: GOOD (  14.19  )
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

syscon-reboot-mode schema allows arbitrary "mode-.* properties but only
a subset actually makes sense and is valid.  Provide negative look-ahead
pattern to disallow any modes not supported by the device, which
tightens the binding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2cc43742b8e3..7bcb4e2f47ec 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -239,11 +239,14 @@ allOf:
       properties:
         reboot-mode:
           type: object
-
           $ref: /schemas/power/reset/syscon-reboot-mode.yaml#
-
           unevaluatedProperties: false
 
+          patternProperties:
+            # Negative look-ahead to disallow unsupported modes. The '$' has to be
+            # part of lookahead group to work, instead of trailing outside of ().
+            "^mode-(?!(bootloader$|fastboot$|loader$|normal$|recovery$))": false
+
   - if:
       properties:
         compatible:
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
