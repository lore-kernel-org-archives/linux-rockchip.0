Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5079ECCD195
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Oct 2025 14:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOvR6KLxkuhLIPNvdh5ABeGW+bmLqhF2JyvqwaoX9OE=; b=D8HOmDrqXpoQ+s
	1HpFqUJp6BdO5dWNCv3KmTnrIahnp9HPQaw+AXp2PRWC0r6LZJp2BijDJHVub9oNz0szxE0auW3fP
	XgCiCejF7hYOhKanYOCADUxVriv2YkxGWlSCOE6Vx4MCnCbPv+w+8la7oCbOSwQGo1znlEU42XVYJ
	sG2We/s0XdSbpH1ihDifMZkd4zoBdXjA3sMF25xxasl7iyvubyIdHunoOttlpV7FIa+CwQ3W9zG8J
	WI/KG2/FwZh3XBecaFODyarI57NpkDSPVr3OADHOopRSCcwPC0fTuxbHRz8MMy5z/s8t4otT6k7Qr
	DQjbhH138RquL5zJyqEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9PLL-000000054jH-2X2N;
	Thu, 16 Oct 2025 14:52:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9PLJ-000000054hA-1ZOQ
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Oct 2025 14:52:38 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59G7eFeK004964
	for <linux-rockchip@lists.infradead.org>; Thu, 16 Oct 2025 14:52:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:reply-to:subject:to; s=
	qcppdkim1; bh=jPmtY2bWstZxGYrHD2oLA4kDgMlBAGLM7cSsgPby8R8=; b=oK
	0IvGUFq5Jpvs+nDFM/Il2MpT/ilhF7MHPLO+EQjXbkTN5WAB2rI0VHOSOOV+Qzxv
	sRtsBKGetq9wWxLEcY2lXvRoMYL7LPpZ9pIVBfAimdy6R2mv9p6gAudwk8iSrs25
	65FvBqQsyi+Yt4UDL56r1HgrPj1Jwtkn5AOnrPf0622q69XSNno8TLBKC0CUEYol
	ixpON2jXbKn9SfLTwAQqtm6rDhMB2kh0BfyW/hagjxvIxYHeAEDIseAWzJedm9W+
	vK8BUcdjcOH0s4pKDHXdtZfLjAruVuPpD/VTQr//0Fa2Z6QX9Ou1aNUUAQRav4qz
	6q8Ce5vsU3zTX1Onw0lQ==
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1amx8d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 16 Oct 2025 14:52:36 +0000 (GMT)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-3c98354c16eso153118fac.2
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Oct 2025 07:52:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760626355; x=1761231155;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jPmtY2bWstZxGYrHD2oLA4kDgMlBAGLM7cSsgPby8R8=;
        b=cVRvebDiQtUpQ/+0xNbmFnwB5fQ9lFIW91GcK8NK4ph/ulEM9oFSd21gwceV/vVKvG
         ZdfeZR6wCzX1ZRuEA7foV20VKXp41pa20AVhy5lQWOVbj6mHqpIZCx01meGcTOBcrJOq
         3c9GN1kXk5hGhrx7Lvw2kvlwzSZxzOhsBRzHRcbppaFLchxFv1CAb0H2dxlJOgrxcEnP
         3VAlB+uOlkTd/9lT95K3sEgQpOQjf+Krn9tDqywMI9I/ts1SLhKvciIaYT/LqxqidzmC
         IkCXdzNJDxdD5s0sEEDV5RH17Uur5AVVYGtIUi5FyKxBU9ZrfgwT/NtvN9YFINdXI9ln
         kANQ==
X-Forwarded-Encrypted: i=1; AJvYcCVD56G4HsO7J9rErXWqvxcwmRBMrexiuUxK1YWidXxOcVJMOIwt3BtX++CCU/ByAQ1PsgUKo/yAZEvh3jqhOg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzarYdtaH0hCj9Wfvxqy2ZcQ1VW6as3RwMp0mJTyU4ODJNhXGlN
	y/K3wmCJ25XVFFQMLZyg/kvjtGgIWqgdb2cRhoSOZUU3ZaJoEzx8qQE+SolR7NTX8UvKatfdDJp
	rURgQYcMfHQSFVNwUeE32NbWmnkT7DnkY5hPrX5nljAXr/9mdjgQG78x8/CQmqy/b7WPS0eBYwF
	aeGf0AAB1QVf0D1gj7tMZzor6Db2Ms676zRCM3v1Qq4t1YUHYdWQ==
X-Gm-Gg: ASbGnctD2pjsclaEpPCCv7A+Orp1delbmNpQil03xT4kG5Mz+oAtxzp+ITUO4ABkGfY
	JpdzCpbMIP3hPEPe17F8c3Ga8/jUPWNPP2MBoKXAFFmJjmJFp8XHSZW4yOP9VZRD1r4YlGeDTTb
	dUMQ+SXfQK/5+tNMADcbANcXPVpnEUU5wEqPUoAT3Fz4wpv6AekBA0wgjZ3q8iAJRRG06syJhr9
	NFquiBYzFk0G0U=
X-Received: by 2002:a05:6871:2e88:b0:35d:a9e2:fbd1 with SMTP id 586e51a60fabf-3c98cfa8295mr10087fac.21.1760626355261;
        Thu, 16 Oct 2025 07:52:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF39ocujuIwT0Et62sHrBT+rRRN4wBRxOHxmKLmre65EnhOwqDPEsCuGBua+8VJiCAAa15gVkxk2D9mH6TwzQ8=
X-Received: by 2002:a05:6871:2e88:b0:35d:a9e2:fbd1 with SMTP id
 586e51a60fabf-3c98cfa8295mr10075fac.21.1760626354773; Thu, 16 Oct 2025
 07:52:34 -0700 (PDT)
MIME-Version: 1.0
References: <20250718105407.32878-1-vignesh.raman@collabora.com> <20250718105407.32878-2-vignesh.raman@collabora.com>
In-Reply-To: <20250718105407.32878-2-vignesh.raman@collabora.com>
From: Rob Clark <rob.clark@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 07:52:23 -0700
X-Gm-Features: AS18NWBmqrEUHFQlSWdIGqm2-_tBPDNsmr766wJpJByzaFclGFLQ0RGnzuLEsPQ
Message-ID: <CACSVV029ueL_4Y5irmmOwy_9QDQGqDe_1wCGUe22FdefQiNjkw@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] drm/ci: disable apq8016 and apq8096 bare-metal jobs
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
        helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch,
        robdclark@gmail.com, guilherme.gallo@collabora.com,
        sergi.blanch.torne@collabora.com, valentine.burley@collabora.com,
        lumag@kernel.org, linux-mediatek@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
        amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
        linux-kernel@vger.kernel.org
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68f106b4 cx=c_pps
 a=zPxD6eHSjdtQ/OcAcrOFGw==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=QX4gbG5DAAAA:8 a=Gxbm4VOBLxWGKnsTXboA:9
 a=QEXdDO2ut3YA:10 a=y8BKWJGFn5sdPF1Y92-H:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: 0sUsFTmnSh4onWKykNRheydjvVyA6ybD
X-Proofpoint-ORIG-GUID: 0sUsFTmnSh4onWKykNRheydjvVyA6ybD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfXx15w+tD5lafJ
 eZVV8HW/1CcX3ykYOen5ptwl0LLTSoplsghU2FcKy++LqWFTox6y0kQPFlFoC9ccokVD5FamB+x
 whRzrot0xER5j46+KrXJd/iJgKxxVXn73Qr2p0Es2wi4KNHaaBbMrjX+aM3x6Nt4Rbc1onXk7wc
 V3nV4eLuOOF6a3hLrr//wc9wRdx4/h8/vMvjSPHJCnsnPFwfi0r3qlVtXqwQ55g28eKHugvgoWe
 /NJ+kSJxAKaH0jSP/it7pxIoOzVbKRDDgi46xRbfUYH2JD3KrPsfHiAjHhPzEIQid3+WzkOasWD
 awrU7VUZO8r34YpR9FrX27GyBOpIKvtyuU2YHAsn1ZEtBA4cYZbG6ft/W6PT3sf9Qfe2lsMTRCl
 0qDVwdh/S1am+E9wneqwjCjf2oZFww==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_075237_435056_1008299A 
X-CRM114-Status: GOOD (  15.46  )
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
Reply-To: rob.clark@oss.qualcomm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdWwgMTgsIDIwMjUgYXQgMzo1NOKAr0FNIFZpZ25lc2ggUmFtYW4KPHZpZ25lc2gu
cmFtYW5AY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBUaGVzZSBkZXZpY2VzIGFyZSBiZWluZyBt
b3ZlZCB0byBMQVZBLiBUaGUgam9icyB3aWxsIGJlIGVuYWJsZWQgYW5kIHRoZQo+IGpvYiBkZWZp
bml0aW9ucyB3aWxsIGJlIHVwZGF0ZWQgb25jZSB0aGUgbW92ZSBpcyBjb21wbGV0ZS4KCmZ3aXcs
IHRoZSBydW5uZXJzIGFyZSB1cCBhbmQgcnVubmluZyBpbiBMQVZBIG5vdwoKQlIsCi1SCgo+IFNp
Z25lZC1vZmYtYnk6IFZpZ25lc2ggUmFtYW4gPHZpZ25lc2gucmFtYW5AY29sbGFib3JhLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3QueW1sIHwgNiArKysrLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vY2kvdGVzdC55bWwgYi9kcml2ZXJzL2dwdS9kcm0vY2kvdGVzdC55
bWwKPiBpbmRleCA4MTE0N2U4NmJmZDAuLjUzZDE5ZmZhYWY2MSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vY2kvdGVzdC55bWwKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vY2kvdGVzdC55
bWwKPiBAQCAtMTQ4LDcgKzE0OCw5IEBAIG1zbTpzYzcxODAtdHJvZ2Rvci1raW5nb2Z0b3duOgo+
ICAgICAgR1BVX1ZFUlNJT046ICR7REVWSUNFX1RZUEV9Cj4gICAgICBSVU5ORVJfVEFHOiBtZXNh
LWNpLXg4Ni02NC1sYXZhLXNjNzE4MC10cm9nZG9yLWtpbmdvZnRvd24KPgo+IC1tc206YXBxODAx
NjoKPiArIyBGSVhNRTogRGlzYWJsZSB0aGUgYmFyZS1tZXRhbCBqb2JzLiBUaGVzZSBkZXZpY2Vz
IGFyZSBiZWluZyBtb3ZlZCB0byBMQVZBLgo+ICsjIE9uY2UgdGhlIG1vdmUgaXMgY29tcGxldGUs
IHVwZGF0ZSB0aGUgam9iIGRlZmluaXRpb25zIGFjY29yZGluZ2x5Lgo+ICsubXNtOmFwcTgwMTY6
Cj4gICAgZXh0ZW5kczoKPiAgICAgIC0gLmJhcmVtZXRhbC1pZ3QtYXJtNjQKPiAgICBzdGFnZTog
bXNtCj4gQEAgLTE2NSw3ICsxNjcsNyBAQCBtc206YXBxODAxNjoKPiAgICBzY3JpcHQ6Cj4gICAg
ICAtIC4vaW5zdGFsbC9iYXJlLW1ldGFsL2Zhc3Rib290LnNoIHx8IGV4aXQgJD8KPgo+IC1tc206
YXBxODA5NjoKPiArLm1zbTphcHE4MDk2Ogo+ICAgIGV4dGVuZHM6Cj4gICAgICAtIC5iYXJlbWV0
YWwtaWd0LWFybTY0Cj4gICAgc3RhZ2U6IG1zbQo+IC0tCj4gMi40Ny4yCj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
