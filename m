Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5115F60A3827
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 15:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tcDvBy6m;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=isZAzEjw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Q0ZCEuZW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=x54zlcOiPTneBLRadkEXnVIIcp0o32GDIk0NwgLCIXw=; b=tcDvBy6m0ZJczD2+OVB1sJDyjZ
	SXmC/jxL/2yobEqGqfaxNJwfzTCwP3FW2FW78pssfIIfKIs4x1AQ8e0Wino9dIphVH0lNzMd9jwCa
	AflO3VfxTQhVmeLeuS1dqeISb8LVZC+aMed/8WzFbDL8cM2dBJ78sLY5u6B99egNWrgTpeU9nbOXe
	2QgpKszx+xDtngxe6i9G6qVUF1y1zHxVjCeBQpiMVP6eyL9QsPLv8NEeM0vSBnmdYkUTWn12dyHLc
	NJ8DLxyCYoD58V9AiKQGIO6eVa49Ed+vzBTAg7LFqko1y1IKccTxyoa8GvciLz1hk4KX3A/+HZBrl
	D7lFFAJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRWb7-0000000AQet-0unP;
	Thu, 12 Nov 2026 15:20:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRWay-0000000AQdm-1SSX
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 15:20:20 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ACAfNC91954124
	for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 15:20:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+fIl7t38r6YFHA9TzOGRmGrOug9wzJn5bgunm8JUJBI=; b=isZAzEjwKumlixI0
	DrwYp7TSLWkN+oTpA9eciLdB3BssYhOhb9HwJJUnPhBVY01KxJ3eKN4hX2twziJZ
	x8P9jVovz/sKgkPv0rV1wlHtnkNplB7rO4NcSlV3LMffdwvPjNwzm6MV8LZP7gfh
	YfS8REewWUI44q74Z70Ezm03vlQj+dGd7hN/pjkyULkNAaONC0hAvr+6Oa0gLXaO
	S9RkwJaZxFyL8XF+0NPJW6/cvjbijKcxZd0kHVjRSFrE1RRLX58xv9aSUXkwbRPQ
	CdA61J0XbkRSTZGgDa1U7j7yN/6QmkunQwYPuk8FDnrETXWCYUstOLf2E6/YuDKS
	tivIWw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwbx30ypn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 15:20:11 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-89fb6a45c48so4120504b3a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 07:20:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794496811; cv=none;
        d=google.com; s=arc-20260327;
        b=LtFAtG8xKGexrNVUJNncd6xQmlKWg/V0PMgrwtLYU5WkHLujlb7mkZAVEywPmEfNdP
         KT1+SjVsJrmFlNzD5j32wGCLdA5W+5tKSO/bUVkuPoOhQJ6YJH3ctbfEkclv47eUzHgN
         CqiLuZC9nYV9eimKwmzmSRSXpbGNyXo2+Wvwop+kLkU4HQRh6VAVBV6bkWNADjMuPSly
         jpp4v9/WZOboJanWJ3+jD1Ha8TeBkzmQYKYe/+gDHMc+UMV3tiyJoeg5/qPRXRjEdfiA
         6waUQPkiH2mqR/zP1d32Ix3YOeq5CyoUs7WLNzhhRv4DbCDtEhlwoMZJT+bPN4+r3WO1
         fM7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+fIl7t38r6YFHA9TzOGRmGrOug9wzJn5bgunm8JUJBI=;
        fh=N+nPWV/KlWMxkKT0qjHrIHQa0FrAuCofLhRI/oUxs3Q=;
        b=rYOaGLas5O9Ur+XXy3LO8Y8mQqEVXBfJY3k4+3ZKZ9RYYFKejEjlslURRoLiB9Ejgy
         UCVEb2/f57wAaBV5bc5nbHFkCBddry+VpmgkpetzplR/kpG54enoUpHq4u8jMVVzfOO3
         WUBoNlVYhmies6+sWCOrhBZ2/WVBjnB5LpduNhBPcOO2Vf/QjwIkd/7VzTl/Y0zOkOkq
         HkpCinq8AkI5Ik17xH00lMOde8dSXXZzkcdDKgiBqY/rGLvwCgUHPdDC1XxiU+9aNn5+
         K9S/Zr1Z2bxZoWoID2+qeHECi6DokEFMx9YO8X84QtBRZbWhwf4p2wJ1RUTEU5X3eQa4
         EHJg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794496811; x=1795101611; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=+fIl7t38r6YFHA9TzOGRmGrOug9wzJn5bgunm8JUJBI=;
        b=Q0ZCEuZWERVRTOtDasfDIURI9E7QYi61rqVmgtg8rYOicidJkSSxJ22LfEBEs0IFND
         BMFkw3YrSVUJtbORkjqdJZ3ZfSFSFOb/2ok3fDBEsC4Tf8KDekhi34Y8fp4FRI98wkjz
         vn4EXTUwjFQKgnPhJtRnJdZBSaWyoeqwK7Uh7XH42zSDOO5lUrax8UR+xF+OZB4d2uJK
         bI4Ew3ZUnKPxSnEjAlKZ7NZEScZZ3ZFACaSlS4c+XPuURpTZc5y78WUudfF+re0ulm4O
         bZ6NRyAfVIUvWMaHZYWzeESh56ZMLtRiNf+rZKkRRvj9+icFZ/dNAHTy5aiCcudo6Zxb
         H7PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794496811; x=1795101611;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+fIl7t38r6YFHA9TzOGRmGrOug9wzJn5bgunm8JUJBI=;
        b=QELIMmIC9ICNyNWT123xdN9T4y5DODK5u/T4bnO3NAWjlA2JTSwzb5f2jPgTgfAl4e
         42vspBj9RB52KrfKNZYV0R9tpO9LMGaZ5fj8k/DlzU4bGMgXK60dBZvhcUKi+YoNjJwm
         dLtD9jqqim1tBr4BWqQixKy8tw+y+24QSeXFQCb8yZ2R3SzvB3Ct3W4R9mxLiYgmAq83
         1hzp8RH6jgmCKPaLR3GOjIzyjx7JbnjOE/mXVLQk3f8fcGLmO4WcsIxGZL1C8nwLTMHY
         ywOct6FKblm1T6TEOOvtP/vO3Mo2tFBKshfhBL+3/QubjTIhlzSIAX1xqdAXyeBsYFEs
         Eg0g==
X-Forwarded-Encrypted: i=1; AL+hErEna8kaA5qdgJO3qHpKP9UXTB0jxXPbC/xbk8vL/vfTlQKpYlHSmHAj9d1sdpcd7s3UaTJwvcE/li4yhGYU8w==@lists.infradead.org
X-Gm-Message-State: APuU4Z/ZI0MzDbJxWU3KjsNwmK1pjmE6jd0wqtcoblx/WiNTcRlpMT2E
	ghti7XBpPjFO2UA1FAoy94+CHxq8TzxgYli7tNs6JDujFs7urAwnOHxWWtwYqVw4ZKBTgvwFEZh
	4ltwqjRTl8Ggt3wTJA+Cbm+cA1jq3vLQU7n7ucgp0gK03av2sdIl0GJkvoEEmgP0bU/lG/MVclv
	TzUZGtehQMS1zRWdeOSiUVSvcO+VwB7UbMb1O4bPcYply+G3porw==
X-Gm-Gg: AYBFou1qcclr75wlN0F6ykJXq3tcYqieBI0M1+d2BqyL/TpDeNNTcPIQwQKImG2v1iI
	52+Y/YGqGrQenYyG5uwfgegTaQMNIODbzAy9X/CuPnXqEGOc3l+1AhhpBQ0QIWICLFxZ/M4kE4Z
	Jrtu6sz6Qo+pxLadm0cJPPWLe/9kbLi8cL7KbQdyNJ1AnhswZbwa/ygOpd5w==
X-Received: by 2002:a05:6a00:f8d:b0:886:3a6c:a9da with SMTP id d2e1a72fcca58-8bc1bcd60d1mr5466785b3a.26.1794496810736;
        Thu, 12 Nov 2026 07:20:10 -0800 (PST)
X-Received: by 2002:a05:6a00:f8d:b0:886:3a6c:a9da with SMTP id
 d2e1a72fcca58-8bc1bcd60d1mr5466739b3a.26.1794496810109; Thu, 12 Nov 2026
 07:20:10 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261019092417.391522-1-leonard@lausen.nl> <20261019092417.391522-2-leonard@lausen.nl>
In-Reply-To: <20261019092417.391522-2-leonard@lausen.nl>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 16:19:58 +0100
X-Gm-Features: AclHuK9honMV6OwgXNyYrNEkyUm1bD_efoW1xKgxLOXh4P3goN8MpuuCosIlMxs
Message-ID: <CAPx+jO-9BqNgA1Nx2TiHX=BS6cJMmETepYsiujBCeeb3wPt1bQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] pmdomain: rockchip: Manage the RK3576 GPU domain supply
To: Leonard Lausen <leonard@lausen.nl>
Cc: ulfh@kernel.org, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, detlev.casanova@collabora.com,
        finley.xiao@rock-chips.com, zhangqing@rock-chips.com,
        inindev@gmail.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, gahing@gahingwoo.com
X-Authority-Analysis: v=2.4 cv=S+5MU4sP c=1 sm=1 tr=0 ts=6af5d92b cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8 a=9GNsruGHAAAA:8 a=TNRU4YkNAAAA:8
 a=9z9mmZE1JoB7TLlessoA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=gf-oSkQAjqHFJRp-GQfY:22 a=T6RL-YpNOstmnv1gjOTq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEyMDA2MSBTYWx0ZWRfX0VrURFgR+za8
 Iw4Fblk8bsDpf1VUvyJyanpNwx/65bx3EqY3i08FGYw1PiNbxwoEYo+nWaW2/Tn3ZIn5RYLaXMs
 T76R0Hj3Ozh5EZxmB7Be0Okq/TarpcO9VVQdDSl43PlzgWbxpheONNnnQ5a/sLV69HChgdjkgXg
 xTOnyKoUWKLZdTdddA0yGV3o3Ol8TlpGKWZIYFqYkIXrwjSBJ3+PEEpuVowHSLuw2f4A7AIiClY
 XYzKFZQ656NpHBBrbEYbPq040jk4swRo+4MU/8SJDVZ19MzBDMIxhEvo3Aw0f+MDBZVpZjwUqTg
 sb9mHn7YC+JTJ7XMhR+ewSAsj78qhLy0+T0pRG1wV2mLU+F1zDOwT259Xch4owf4kkcaddqDAAU
 jNDGeZo2aixRzStKq1KZgOJLNNbMI4kYjlugQoEV9YPEdG30SwBIXG5d+VwuXGixia5tJjs3/zP
 j7ImaY9IAR56YE/6G2Q==
X-Proofpoint-ORIG-GUID: uEvcAMQAGc2xzoYu0ryjmvukBn7iJ9OR
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEyMDA2MSBTYWx0ZWRfX92T1EKF4Yo2i
 Vz6MZ8X24yocUZNi8TIPzaU5O02rUQCcdPstgjx1+NcKcfaTHKfENiyTKZuE5DHiLeriG0afwSD
 KsgKZSG5io9NCtsYPI9xhE1dUapEuNU=
X-Proofpoint-GUID: uEvcAMQAGc2xzoYu0ryjmvukBn7iJ9OR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-12_01,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0
 adultscore=0 spamscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611120061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_072012_417544_3E3DF78E 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gTW9uLCBPY3QgMTksIDIwMjYgYXQgMTE6MjTigK9BTSBMZW9uYXJkIExhdXNlbiA8bGVvbmFy
ZEBsYXVzZW4ubmw+IHdyb3RlOgo+Cj4gT24gdGhlIE5hbm9QaSBNNSwgYm9vdCBoYW5ncyBkdXJp
bmcgUGFuZnJvc3QgaW5pdGlhbGl6YXRpb24uIEJlZm9yZSB0aGlzCj4gZml4LCBib290aW5nIHJl
cXVpcmVkIGJsYWNrbGlzdGluZyBQYW5mcm9zdCBvbiB0aGUga2VybmVsIGNvbW1hbmQgbGluZS4K
PiBMb2FkaW5nIFBhbmZyb3N0IGFmdGVyIGJvb3QgcmVwb3J0cyBhIEdQVSBwb3dlci1kb21haW4g
YWNrbm93bGVkZ21lbnQKPiB0aW1lb3V0Ogo+Cj4gICBmYWlsZWQgdG8gZ2V0IGFjayBvbiBkb21h
aW4gJ2dwdScsIHZhbD0weDExM2ZmCj4KPiBBZGQgcmVndWxhdG9yIHN1cHBvcnQgdG8gdGhlIFJL
MzU3NiBkb21haW4gZGVzY3JpcHRvcnMgYW5kIG1hcmsgdGhlIEdQVQo+IGRvbWFpbiBhcyByZWd1
bGF0b3ItZGVwZW5kZW50LiBUaGlzIGxldHMgdGhlIGV4aXN0aW5nIFJvY2tjaGlwCj4gcG93ZXIt
ZG9tYWluIHJlZ3VsYXRvciBoYW5kbGluZyBtYW5hZ2UgdGhlIEdQVSBkb21haW4gc3VwcGx5Lgo+
Cj4gQSBjb3JyZXNwb25kaW5nIGRvbWFpbi1zdXBwbHkgcHJvcGVydHkgaXMgbmVlZGVkIGluIHRo
ZSBib2FyZCBEVC4KPgo+IFRoZSByZWd1bGF0b3ItY2FwYWJsZSBkZXNjcmlwdG9ycyBhcmUgYmFz
ZWQgb24gdGhlIHJlZ3VsYXRvciBzdXBwb3J0IGluCj4gSmlheGluZyBIdSdzIHBlbmRpbmcgUksz
NTc2IE5QVSBlbmFibGVtZW50IHNlcmllcywgd2l0aG91dCBpdHMgTlBVIHNldHRsZQo+IGRlbGF5
IGNoYW5nZXMuCj4KPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA5MjQx
MDIxMzUuOTIyMTctMTAtZ2FoaW5nQGdhaGluZ3dvby5jb20vCj4gRml4ZXM6IGNmZWUxYjUwNzc1
OCAoInBtZG9tYWluOiByb2NrY2hpcDogQWRkIHN1cHBvcnQgZm9yIFJLMzU3NiBTb0MiKQo+IFNp
Z25lZC1vZmYtYnk6IExlb25hcmQgTGF1c2VuIDxsZW9uYXJkQGxhdXNlbi5ubD4KClNvIHRoaXMg
c2hvdWxkIGJlIGFwcGxpZWQgYXMgYSBmaXggYW5kIHRhZ2dlZCBmb3Igc3RhYmxlIGtlcm5lbHMs
IHJpZ2h0PwoKS2luZCByZWdhcmRzClVmZmUKCj4KPiAtLS0KPiAgZHJpdmVycy9wbWRvbWFpbi9y
b2NrY2hpcC9wbS1kb21haW5zLmMgfCAxMCArKysrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
bWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgYi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlw
L3BtLWRvbWFpbnMuYwo+IGluZGV4IGUxOTNmOTc4ZDVmMzUuLmI0MWY5ZmNiNjJiZmUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiArKysgYi9k
cml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+IEBAIC0xNzYsNDEgKzE3Niw0
MiBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcG11IHsKPiAgICAgICAgIC5tZW1fb2Zmc2V0ID0gbV9vZmZz
ZXQsICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiAgICAgICAgIC5tZW1fc3RhdHVzX21hc2sg
PSAobV9zdGF0dXMpLCAgICAgICAgICAgICAgICAgIFwKPiAgICAgICAgIC5yZXBhaXJfc3RhdHVz
X21hc2sgPSAocl9zdGF0dXMpLCAgICAgICAgICAgICAgIFwKPiAgICAgICAgIC5yZXFfb2Zmc2V0
ID0gcl9vZmZzZXQsICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiAgICAgICAgIC5yZXFfd19t
YXNrID0gKHJlcSkgPDwgMTYsICAgICAgICAgICAgICAgICAgICAgIFwKPiAgICAgICAgIC5yZXFf
bWFzayA9IChyZXEpLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiAgICAgICAgIC5p
ZGxlX21hc2sgPSAoaWRsZSksICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiAgICAgICAg
IC5hY2tfbWFzayA9IChhY2spLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiAgICAg
ICAgIC5hY3RpdmVfd2FrZXVwID0gd2FrZXVwLCAgICAgICAgICAgICAgICAgICAgICAgIFwKPiAg
ICAgICAgIC5uZWVkX3JlZ3VsYXRvciA9IHJlZ3VsYXRvciwgICAgICAgICAgICAgICAgICAgIFwK
PiAgfQo+Cj4gLSNkZWZpbmUgRE9NQUlOX01fT19SX0coX25hbWUsIHBfb2Zmc2V0LCBwd3IsIHN0
YXR1cywgbV9vZmZzZXQsIG1fc3RhdHVzLCByX3N0YXR1cywgcl9vZmZzZXQsIHJlcSwgaWRsZSwg
YWNrLCBnX21hc2ssIHdha2V1cCkgICBcCj4gKyNkZWZpbmUgRE9NQUlOX01fT19SX0coX25hbWUs
IHBfb2Zmc2V0LCBwd3IsIHN0YXR1cywgbV9vZmZzZXQsIG1fc3RhdHVzLCByX3N0YXR1cywgcl9v
ZmZzZXQsIHJlcSwgaWRsZSwgYWNrLCBnX21hc2ssIHdha2V1cCwgcmVndWxhdG9yKSAgICAgICAg
XAo+ICB7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXAo+ICAgICAgICAgLm5hbWUgPSBfbmFtZSwgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXAo+ICAgICAgICAgLnB3cl9vZmZzZXQgPSBwX29mZnNldCwgICAgICAgICAgICAgICAg
ICAgICAgICAgXAo+ICAgICAgICAgLnB3cl93X21hc2sgPSAocHdyKSA8PCAxNiwgICAgICAgICAg
ICAgICAgICAgICAgXAo+ICAgICAgICAgLnB3cl9tYXNrID0gKHB3ciksICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXAo+ICAgICAgICAgLnN0YXR1c19tYXNrID0gKHN0YXR1cyksICAgICAg
ICAgICAgICAgICAgICAgICAgXAo+ICAgICAgICAgLm1lbV9vZmZzZXQgPSBtX29mZnNldCwgICAg
ICAgICAgICAgICAgICAgICAgICAgXAo+ICAgICAgICAgLm1lbV9zdGF0dXNfbWFzayA9IChtX3N0
YXR1cyksICAgICAgICAgICAgICAgICAgXAo+ICAgICAgICAgLnJlcGFpcl9zdGF0dXNfbWFzayA9
IChyX3N0YXR1cyksICAgICAgICAgICAgICAgXAo+ICAgICAgICAgLnJlcV9vZmZzZXQgPSByX29m
ZnNldCwgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ICAgICAgICAgLnJlcV93X21hc2sgPSAo
cmVxKSA8PCAxNiwgICAgICAgICAgICAgICAgICAgICAgXAo+ICAgICAgICAgLnJlcV9tYXNrID0g
KHJlcSksICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ICAgICAgICAgLmlkbGVfbWFz
ayA9IChpZGxlKSwgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ICAgICAgICAgLmNsa191
bmdhdGVfbWFzayA9IChnX21hc2spLCAgICAgICAgICAgICAgICAgICAgXAo+ICAgICAgICAgLmFj
a19tYXNrID0gKGFjayksICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ICAgICAgICAg
LmFjdGl2ZV93YWtldXAgPSB3YWtldXAsICAgICAgICAgICAgICAgICAgICAgICAgXAo+ICsgICAg
ICAgLm5lZWRfcmVndWxhdG9yID0gcmVndWxhdG9yLCAgICAgICAgICAgICAgICAgICAgXAo+ICB9
Cj4KPiAgI2RlZmluZSBET01BSU5fTV9SKF9uYW1lLCBwd3IsIHN0YXR1cywgcmVxLCBpZGxlLCBh
Y2ssIHdha2V1cCwgcmVndWxhdG9yKSAgICAgIFwKPiAgeyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiAgICAgICAgIC5uYW1lID0gX25hbWUs
ICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gICAgICAgICAucHdyX3dfbWFzayA9IChwd3Ip
IDw8IDE2LCAgICAgICAgICAgICAgICAgICAgICBcCj4gICAgICAgICAucHdyX21hc2sgPSAocHdy
KSwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gICAgICAgICAuc3RhdHVzX21hc2sg
PSAoc3RhdHVzKSwgICAgICAgICAgICAgICAgICAgICAgICBcCj4gICAgICAgICAucmVxX3dfbWFz
ayA9IChyZXEpIDw8IDE2LCAgICAgICAgICAgICAgICAgICAgICBcCj4gICAgICAgICAucmVxX21h
c2sgPSAocmVxKSwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gICAgICAgICAuaWRs
ZV9tYXNrID0gKGlkbGUpLCAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gICAgICAgICAu
YWNrX21hc2sgPSAoYWNrKSwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gQEAgLTI1
MCwyNSArMjUxLDI4IEBAIHN0cnVjdCByb2NrY2hpcF9wbXUgewo+ICAgICAgICAgRE9NQUlOKG5h
bWUsIHB3ciwgc3RhdHVzLCByZXEsIHJlcSwgcmVxLCB3YWtldXApCj4KPiAgI2RlZmluZSBET01B
SU5fUkszNTI4KG5hbWUsIHB3ciwgcmVxKSAgICAgICAgICBcCj4gICAgICAgICBET01BSU5fTShu
YW1lLCBwd3IsIHB3ciwgcmVxLCByZXEsIHJlcSwgZmFsc2UpCj4KPiAgI2RlZmluZSBET01BSU5f
UkszNTYyKG5hbWUsIHB3ciwgcmVxLCBnX21hc2ssIG1lbSwgd2FrZXVwKSAgICAgICAgICAgICBc
Cj4gICAgICAgICBET01BSU5fTV9HX1NEKG5hbWUsIHB3ciwgcHdyLCByZXEsIHJlcSwgcmVxLCBn
X21hc2ssIG1lbSwgd2FrZXVwLCBmYWxzZSkKPgo+ICAjZGVmaW5lIERPTUFJTl9SSzM1NjgobmFt
ZSwgcHdyLCByZXEsIHdha2V1cCwgcmVndWxhdG9yKSAgICAgICAgICAgICAgIFwKPiAgICAgICAg
IERPTUFJTl9NX1IobmFtZSwgcHdyLCBwd3IsIHJlcSwgcmVxLCByZXEsIHdha2V1cCwgcmVndWxh
dG9yKQo+Cj4gICNkZWZpbmUgRE9NQUlOX1JLMzU3NihuYW1lLCBwX29mZnNldCwgcHdyLCBzdGF0
dXMsIHJfc3RhdHVzLCByX29mZnNldCwgcmVxLCBpZGxlLCBnX21hc2ssIHdha2V1cCkgICAgICBc
Cj4gLSAgICAgICBET01BSU5fTV9PX1JfRyhuYW1lLCBwX29mZnNldCwgcHdyLCBzdGF0dXMsIDAs
IHJfc3RhdHVzLCByX3N0YXR1cywgcl9vZmZzZXQsIHJlcSwgaWRsZSwgaWRsZSwgZ19tYXNrLCB3
YWtldXApCj4gKyAgICAgICBET01BSU5fTV9PX1JfRyhuYW1lLCBwX29mZnNldCwgcHdyLCBzdGF0
dXMsIDAsIHJfc3RhdHVzLCByX3N0YXR1cywgcl9vZmZzZXQsIHJlcSwgaWRsZSwgaWRsZSwgZ19t
YXNrLCB3YWtldXAsIGZhbHNlKQo+ICsKPiArI2RlZmluZSBET01BSU5fUkszNTc2X1IobmFtZSwg
cF9vZmZzZXQsIHB3ciwgc3RhdHVzLCByX3N0YXR1cywgcl9vZmZzZXQsIHJlcSwgaWRsZSwgZ19t
YXNrLCB3YWtldXApICAgIFwKPiArICAgICAgIERPTUFJTl9NX09fUl9HKG5hbWUsIHBfb2Zmc2V0
LCBwd3IsIHN0YXR1cywgMCwgcl9zdGF0dXMsIHJfc3RhdHVzLCByX29mZnNldCwgcmVxLCBpZGxl
LCBpZGxlLCBnX21hc2ssIHdha2V1cCwgdHJ1ZSkKPgo+ICAvKgo+ICAgKiBEeW5hbWljIE1lbW9y
eSBDb250cm9sbGVyIG1heSBuZWVkIHRvIGNvb3JkaW5hdGUgd2l0aCB1cyAtLSBzZWUKPiAgICog
cm9ja2NoaXBfcG11X2Jsb2NrKCkuCj4gICAqCj4gICAqIGRtY19wbXVfbXV0ZXggcHJvdGVjdHMg
cmVnaXN0cmF0aW9uLXRpbWUgcmFjZXMsIHNvIERNQyBkcml2ZXIgZG9lc24ndCB0cnkgdG8KPiAg
ICogYmxvY2soKSB3aGlsZSB3ZSdyZSBpbml0aWFsaXppbmcgdGhlIFBNVS4KPiAgICovCj4gIHN0
YXRpYyBERUZJTkVfTVVURVgoZG1jX3BtdV9tdXRleCk7Cj4gIHN0YXRpYyBzdHJ1Y3Qgcm9ja2No
aXBfcG11ICpkbWNfcG11Owo+Cj4gIC8qCj4gQEAgLTEzMjMsMjUgKzEzMjcsMjUgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCByb2NrY2hpcF9kb21haW5faW5mbyByazM1NzZfcG1fZG9tYWluc1tdID0g
ewo+ICAgICAgICAgW1JLMzU3Nl9QRF9WT1BdICAgICAgICAgPSBET01BSU5fUkszNTc2KCJ2b3Ai
LCAgICAweDAsIEJJVCgxMSksIDAsICAgICAgQklUKDExKSwgMHgwLCAweDYwMDAsICAweDYwMDAs
ICAweDYwMDAsICBmYWxzZSksCj4gICAgICAgICBbUkszNTc2X1BEX1ZPMV0gICAgICAgICA9IERP
TUFJTl9SSzM1NzYoInZvMSIsICAgIDB4MCwgQklUKDE0KSwgMCwgICAgICBCSVQoMTQpLCAweDAs
IEJJVCgxMiksIEJJVCgxMiksIDB4NzAwMCwgIGZhbHNlKSwKPiAgICAgICAgIFtSSzM1NzZfUERf
Vk8wXSAgICAgICAgID0gRE9NQUlOX1JLMzU3Nigidm8wIiwgICAgMHgwLCBCSVQoMTUpLCAwLCAg
ICAgIEJJVCgxNSksIDB4MCwgQklUKDExKSwgQklUKDExKSwgMHg2ODAwLCAgZmFsc2UpLAo+ICAg
ICAgICAgW1JLMzU3Nl9QRF9VU0JdICAgICAgICAgPSBET01BSU5fUkszNTc2KCJ1c2IiLCAgICAw
eDQsIEJJVCgwKSwgIDAsICAgICAgQklUKDE2KSwgMHgwLCBCSVQoMTApLCBCSVQoMTApLCAweDY0
MDAsICB0cnVlKSwKPiAgICAgICAgIFtSSzM1NzZfUERfVkldICAgICAgICAgID0gRE9NQUlOX1JL
MzU3NigidmkiLCAgICAgMHg0LCBCSVQoMSksICAwLCAgICAgIEJJVCgxNyksIDB4MCwgQklUKDkp
LCAgQklUKDkpLCAgQklUKDkpLCAgZmFsc2UpLAo+ICAgICAgICAgW1JLMzU3Nl9QRF9WRVBVMF0g
ICAgICAgPSBET01BSU5fUkszNTc2KCJ2ZXB1MCIsICAweDQsIEJJVCgyKSwgIDAsICAgICAgQklU
KDE4KSwgMHgwLCBCSVQoNyksICBCSVQoNyksICAweDI4MCwgICBmYWxzZSksCj4gICAgICAgICBb
UkszNTc2X1BEX1ZFUFUxXSAgICAgICA9IERPTUFJTl9SSzM1NzYoInZlcHUxIiwgIDB4NCwgQklU
KDMpLCAgMCwgICAgICBCSVQoMTkpLCAweDAsIEJJVCg4KSwgIEJJVCg4KSwgIEJJVCg4KSwgIGZh
bHNlKSwKPiAgICAgICAgIFtSSzM1NzZfUERfVkRFQ10gICAgICAgID0gRE9NQUlOX1JLMzU3Nigi
dmRlYyIsICAgMHg0LCBCSVQoNCksICAwLCAgICAgIEJJVCgyMCksIDB4MCwgQklUKDYpLCAgQklU
KDYpLCAgQklUKDYpLCAgZmFsc2UpLAo+ICAgICAgICAgW1JLMzU3Nl9QRF9WUFVdICAgICAgICAg
PSBET01BSU5fUkszNTc2KCJ2cHUiLCAgICAweDQsIEJJVCg1KSwgIDAsICAgICAgQklUKDIxKSwg
MHgwLCBCSVQoNSksICBCSVQoNSksICBCSVQoNSksICBmYWxzZSksCj4gICAgICAgICBbUkszNTc2
X1BEX05QVVRPUF0gICAgICA9IERPTUFJTl9SSzM1NzYoIm5wdXRvcCIsIDB4NCwgQklUKDYpLCAg
MCwgICAgICBCSVQoMjIpLCAweDAsIDB4MTgsICAgIDB4MTgsICAgIDB4MTgsICAgIGZhbHNlKSwK
PiAgICAgICAgIFtSSzM1NzZfUERfTlBVMF0gICAgICAgID0gRE9NQUlOX1JLMzU3NigibnB1MCIs
ICAgMHg0LCBCSVQoNyksICAwLCAgICAgIEJJVCgyMyksIDB4MCwgQklUKDEpLCAgQklUKDEpLCAg
MHgxYSwgICAgZmFsc2UpLAo+ICAgICAgICAgW1JLMzU3Nl9QRF9OUFUxXSAgICAgICAgPSBET01B
SU5fUkszNTc2KCJucHUxIiwgICAweDQsIEJJVCg4KSwgIDAsICAgICAgQklUKDI0KSwgMHgwLCBC
SVQoMiksICBCSVQoMiksICAweDFjLCAgICBmYWxzZSksCj4gLSAgICAgICBbUkszNTc2X1BEX0dQ
VV0gICAgICAgICA9IERPTUFJTl9SSzM1NzYoImdwdSIsICAgIDB4NCwgQklUKDkpLCAgMCwgICAg
ICBCSVQoMjUpLCAweDAsIEJJVCgwKSwgIEJJVCgwKSwgIEJJVCgwKSwgIGZhbHNlKSwKPiArICAg
ICAgIFtSSzM1NzZfUERfR1BVXSAgICAgICAgID0gRE9NQUlOX1JLMzU3Nl9SKCJncHUiLCAgMHg0
LCBCSVQoOSksICAwLCAgICAgIEJJVCgyNSksIDB4MCwgQklUKDApLCAgQklUKDApLCAgQklUKDAp
LCAgZmFsc2UpLAo+ICB9Owo+Cj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfZG9tYWlu
X2luZm8gcmszNTg4X3BtX2RvbWFpbnNbXSA9IHsKPiAgICAgICAgIFtSSzM1ODhfUERfR1BVXSAg
ICAgICAgID0gRE9NQUlOX1JLMzU4OCgiZ3B1IiwgICAgIDB4MCwgQklUKDApLCAgMCwgICAgICAg
MHgwLCAwLCAgICAgICBCSVQoMSksICAweDAsIEJJVCgwKSwgIEJJVCgwKSwgIGZhbHNlLCB0cnVl
KSwKPiAgICAgICAgIFtSSzM1ODhfUERfTlBVXSAgICAgICAgID0gRE9NQUlOX1JLMzU4OCgibnB1
IiwgICAgIDB4MCwgQklUKDEpLCAgQklUKDEpLCAgMHgwLCAwLCAgICAgICAwLCAgICAgICAweDAs
IDAsICAgICAgIDAsICAgICAgIGZhbHNlLCB0cnVlKSwKPiAgICAgICAgIFtSSzM1ODhfUERfVkNP
REVDXSAgICAgID0gRE9NQUlOX1JLMzU4OCgidmNvZGVjIiwgIDB4MCwgQklUKDIpLCAgQklUKDIp
LCAgMHgwLCAwLCAgICAgICAwLCAgICAgICAweDAsIDAsICAgICAgIDAsICAgICAgIGZhbHNlLCB0
cnVlKSwKPiAgICAgICAgIFtSSzM1ODhfUERfTlBVVE9QXSAgICAgID0gRE9NQUlOX1JLMzU4OCgi
bnB1dG9wIiwgIDB4MCwgQklUKDMpLCAgMCwgICAgICAgMHgwLCBCSVQoMTEpLCBCSVQoMiksICAw
eDAsIEJJVCgxKSwgIEJJVCgxKSwgIGZhbHNlLCBmYWxzZSksCj4gICAgICAgICBbUkszNTg4X1BE
X05QVTFdICAgICAgICA9IERPTUFJTl9SSzM1ODgoIm5wdTEiLCAgICAweDAsIEJJVCg0KSwgIDAs
ICAgICAgIDB4MCwgQklUKDEyKSwgQklUKDMpLCAgMHgwLCBCSVQoMiksICBCSVQoMiksICBmYWxz
ZSwgZmFsc2UpLAo+ICAgICAgICAgW1JLMzU4OF9QRF9OUFUyXSAgICAgICAgPSBET01BSU5fUksz
NTg4KCJucHUyIiwgICAgMHgwLCBCSVQoNSksICAwLCAgICAgICAweDAsIEJJVCgxMyksIEJJVCg0
KSwgIDB4MCwgQklUKDMpLCAgQklUKDMpLCAgZmFsc2UsIGZhbHNlKSwKPiAgICAgICAgIFtSSzM1
ODhfUERfVkVOQzBdICAgICAgID0gRE9NQUlOX1JLMzU4OCgidmVuYzAiLCAgIDB4MCwgQklUKDYp
LCAgMCwgICAgICAgMHgwLCBCSVQoMTQpLCBCSVQoNSksICAweDAsIEJJVCg0KSwgIEJJVCg0KSwg
IGZhbHNlLCBmYWxzZSksCj4gICAgICAgICBbUkszNTg4X1BEX1ZFTkMxXSAgICAgICA9IERPTUFJ
Tl9SSzM1ODgoInZlbmMxIiwgICAweDAsIEJJVCg3KSwgIDAsICAgICAgIDB4MCwgQklUKDE1KSwg
QklUKDYpLCAgMHgwLCBCSVQoNSksICBCSVQoNSksICBmYWxzZSwgZmFsc2UpLAo+ICAgICAgICAg
W1JLMzU4OF9QRF9SS1ZERUMwXSAgICAgPSBET01BSU5fUkszNTg4KCJya3ZkZWMwIiwgMHgwLCBC
SVQoOCksICAwLCAgICAgICAweDAsIEJJVCgxNiksIEJJVCg3KSwgIDB4MCwgQklUKDYpLCAgQklU
KDYpLCAgZmFsc2UsIGZhbHNlKSwKPiAtLQo+IDIuNDcuMwo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
