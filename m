Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA16ACD98F2
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jun 2026 11:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSH+QiztApssCJS6aRnLKqCJfvJ+LaMCioFWVDdUnL0=; b=uRb43ePMRE3qXu
	qFOq+OSn4spRy48+l97M40hZAJ8n+3G5Pm6wWXjV9wnu57s46DZzrfn4juJ6B5YEY11S/p2LKbjma
	9EOdY42hSQl0o5V0UNy0o0xcmW0GPtCZ61QX7yhVvFuyWJB8mi2KVXVIwAWECjyJ+MP1wU93HvDI3
	yp+kIqSlqvVEZrwo4TfguMEnpcXlZYno8dC7Pt2iumj9uHYDYCDsFT+mGooQyu1ah09CDc0LfJqJ6
	GuAjnR1sh0B2VddWytm6mgofBB+zUCkYP3sr1I6CBgbSXBRYvUXr5VDhDPPGyZCVazuJzDL/+QQy/
	ojN/oFGer0vut9Mu46Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbziQ-00000006DWb-43Ok;
	Tue, 23 Jun 2026 11:54:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbziM-00000006DSs-365s
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jun 2026 11:54:53 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NBZa7Q134211
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Jun 2026 11:54:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fw2vf7ZQ5Hwg4RRBsz2SP0jNtQYgUgnxAvq6NzRaRj8=; b=Vvc/uqFUHWTIaaHw
	CgykLxh+JHbckuAbxr8LVfoxnnIpUyBQj287laGknSqX7pOZSSLpGsPrSAYWRcS+
	k+H+i40QkYoQxdBykEvh5BrF6HyKN3Td1orFAy1o2bYjnSuwYjOwvcRofmktQE5k
	hMqVRmd0wJAgUGR1+zMxIcflbZlA5seD39z7St0Kbrike7NxXRQOmlwaK0X5nhTm
	yPe5OSX6oy6SXOyRLgdjXnZbsO/scPyawcLxVz2PGhOunTtpvEwhL1Bb0WBJqd73
	yNUIKOr3FoCTo2VwA5NNDjw4wW28XoaBUS9X7FrTqyhPI+MtMGKYDfZEQkulIne0
	+DOtnA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyr320cq4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 23 Jun 2026 11:54:49 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-91598ab3a1aso688298985a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Jun 2026 04:54:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782215689; cv=none;
        d=google.com; s=arc-20240605;
        b=I3O6MVYJ0O14LMEzG00qaMPCqu4Aa57ZlZgEGidnudFEOKVkTHAEUIyb+m04IkIjtu
         Fynv5ICUTssI/bFs2hjiiRPusenJT/Ga2NC3yptnXMiIvwVaHc70KqY4nlQjnMknxzuJ
         d1bBn9gOqd2/SJ5RIjFzqOk1so+v10HDc2c1EvAyd30YeZ2EQgwFy5pHJid8wXVQlzg9
         i6MXfl47PujZtOWmWPhewLzdM91QoxV34OXy9nf9jejr8SFtX7qgjUqEE3Xjoq5IaSIC
         jYvr9aJ8g/0AWMUtAFLvIW5X3j6hVU2kgwB0dv06fXvc3/73+IYQjzmJJLTD85InTcux
         vIhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fw2vf7ZQ5Hwg4RRBsz2SP0jNtQYgUgnxAvq6NzRaRj8=;
        fh=jUkZpekZUjwkgMtm5U24YmKFF4YNT6Hf/Mk7wq1MrOQ=;
        b=Z0mSQrbecHOvyqOlcF3tbnP/N3RHZ2SLS/emYTG+j3TdrKF5IbwnKHTUm9xt8HurmP
         DFFF5FHwQ1uBJU/OGQZyKTpvNw3YrpSCqb2nasldEU5uZYK3L0xPXk0cq1F9VEIBH2XT
         IAvIc939PK70NTTQqba58F6RJbUvlo3bFfngZhQ2wTxQ+JBdjgLCHuLhYc/Q7mbvJP81
         VPruqvi34T4aV+wRF53dGnihVsQTL8Pedpx8v1hCkRag3AokpFvrWHaWiAtlr8y9e85x
         OPgjwzI2Zb0x1onJQOhTizuhg56vpSooPH2Vp7Zsa6cMpWy6JUxwH9n0M+1QG9f9Jmef
         V4UA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782215689; x=1782820489; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fw2vf7ZQ5Hwg4RRBsz2SP0jNtQYgUgnxAvq6NzRaRj8=;
        b=MCNhlkYfu+dY4CXkaemabV9Far2lbKxTFeg7qLrwHRvFMI/4g+Tub2Dn615bfoaMSU
         7tnInAOXaDsmAiIvIstTQFFWMNymAGV4SLpODtwsjbFajSVdRmiDt23cM7B7c1J3V2b2
         GftkSXYeZHbeHI17/+TR8jLsR4EcyRMDAJO8A6e4rLczpblPzODpNa1cOiY9EhQ9avJK
         9d5ZRUbtslAkXm6CP/3QXErG/S1I1LNULu4Fj75ox4eVvKPBqhMjpn2GRTC47Q1oYCFe
         EAxMBOiDj1k5QUIw81KIEmLl3kpoBHv0kC1Z0ZRMyR1s0P7mHqq3HbRK87mvJik7cJKT
         XVFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782215689; x=1782820489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fw2vf7ZQ5Hwg4RRBsz2SP0jNtQYgUgnxAvq6NzRaRj8=;
        b=bSuWJGcXB9DPrUUHO8Owg9fIUki4xcYXGFPzggqyZ81lLSxZbOXD8xHmABhBB6wiJl
         Z+mJDe+iBKUEB893SOUEcyeas+qq05Qq4bjZ76dZy1l9UGy6vdIw3N8FFf+YWC2NmBy3
         bOg1TyyqW+0cPziO0qbJsDMaTIk2F+Em52LYo9mBeW3qQN3s5PPAw+jrfePwt0iivUqT
         O7024O8w3C3r2ygMft9AdTD0Hd9zMUiUNcmI2laho7j50Uln04k9zwuzGW/Yr+jrHNSG
         g914pVL1W6DYOyOgagIWuRQkEfykyjQeJEMbs6yQMm2iFE23zCVXJK2t/wxNUWIYnFrI
         /aIQ==
X-Forwarded-Encrypted: i=1; AFNElJ/TayJDX+s4fxkS/Y1ZSNMLBPU+ApPIuywstEzovtKlcyKqPkYZGIJJz6+VDH65W6W/d902/OSlPkJJtaz81w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw264TWRN3APvKI6p51TadYcqqZ6i16aklKa1/6nVA+ZihjQole
	vACdsDH0tfHVMdjClVI1u/ZdAZIIt6IbvqFEH5vjgAuaJSuJY/iN3rM5VwmYxXn46iOhcNUVDCs
	yzVYwvGcYavKRrpSUlsvHL2ifb6HhoAV4mgNMN+9Yu85X91ju66hAym13J33jh0t76poMf/+0Xb
	SqaJshOWWrbxCr5xj6GzxMGdI6Pz53UqBXLUmKCGg60CFE8lG3sQ==
X-Gm-Gg: AfdE7cmSN0KHRcymO9lvXqPvralWa5fTDTyr2WaIgWvaJD/IEr8fxKHcDnaQkZCJwA7
	sXN+VC3XTc0AigCafdGZz0oaVuCdoyd1BdbzxhPLI3xePBW2EDRBSEZXhp0c12BIcXqcy/INoLD
	23071/V1qBqPfxPaeM3H+a/lp0acaX6ITcmoi7kYGnyD/8YnJZMe8LXUGnsIP6aScUxNdJsEAKs
	hTJIGIRvhcyMXDTT4AgD9QW6HIp2rGdjppsblly/zd4f6Nx8OD0+Hd6kURu/zsz7T5+4o/iEcsV
	4IAKBVZXkcQ=
X-Received: by 2002:a05:620a:6cce:b0:916:4a9:f35a with SMTP id af79cd13be357-9264771b2a0mr434706485a.30.1782215689076;
        Tue, 23 Jun 2026 04:54:49 -0700 (PDT)
X-Received: by 2002:a05:620a:6cce:b0:916:4a9:f35a with SMTP id
 af79cd13be357-9264771b2a0mr434702185a.30.1782215688526; Tue, 23 Jun 2026
 04:54:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260622-fw_scoped-v1-0-a37d0aac0a68@nxp.com> <20260622-fw_scoped-v1-4-a37d0aac0a68@nxp.com>
In-Reply-To: <20260622-fw_scoped-v1-4-a37d0aac0a68@nxp.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 13:54:37 +0200
X-Gm-Features: AVVi8Cdel5T7fniqHB4_fyyFIVPTxPRe8hWJeBKySDY3t80yH0us_4QRaPBT6xo
Message-ID: <CAFEp6-1vaeC9oDKuPAdPNtmGSsewbHRFS9RcPMzzzWHjnXQA-w@mail.gmail.com>
Subject: Re: [PATCH 4/4] media: qcom: camss: use fwnode_graph_for_each_endpoint_scoped()
 to simpifly code
To: Frank.Li@oss.nxp.com
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Danilo Krummrich <dakr@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Dafna Hirschfeld <dafna@fastmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Heiko Stuebner <heiko@sntech.de>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        driver-core@lists.linux.dev, linux-acpi@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        imx@lists.linux.dev, Guoniu Zhou <guoniu.zhou@nxp.com>,
        Frank Li <Frank.Li@nxp.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDA5NyBTYWx0ZWRfXwBC+PacFsde1
 8DR6Jd/6h7y+LOVNoNJLeXHF2434Tx90BPF7fTuCIOF55azHG9f2A714IFZzPcdKP9nLc71OHVR
 uN/0zEDSQg30uYAbFZ+sj0eIU/ONQ5U=
X-Proofpoint-ORIG-GUID: BuR3mm6J-H-M16EVRW7miVm70mp6ucnh
X-Authority-Analysis: v=2.4 cv=HrxG3UTS c=1 sm=1 tr=0 ts=6a3a7409 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=_glEPmIy2e8OvE2BGh3C:22 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8
 a=9UnFPMSZPvWmRCPcKGwA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDA5NyBTYWx0ZWRfX5GN2h0atOfYy
 O1CYdyXS6ubcH/ysQAwKdE3baHyTbhlc7tmEJoQtxNkcGQFZFnek50XIkXz786tJB0bI86tvSk7
 XwDCkPJgtL1/cIJ1RD7PaPSEJlO3Yw8z8nRcaRei5Zy2iN6FhciAjaxdk+M0YFSnkooUCKbVuRV
 P4tfjK5CS4slfAXZ82C9bFclKjSlz9K6lKZqUeK1OdIUtTN9gQJbyJYJNpaAJHfseewxPKh2phA
 mA11OT8TIqfIB2x8CX4nk4HaQRJgQPq0MNiL7h5i8OYocQX0nIvUNX2a+dLKgFWtq8Ctoi+Gw2V
 TG2SsNRAyEiOY3waBHwmTyXpk1USf15UAgoASiQC1JInnhV7+wlmVfPv+CNwUxYLX0Ic3OP28ug
 ISlN3Tk7eCnnhutAdGYvuP/TWNYMQA+S7eklt9iRi4wzSEo0j+3VAzImAM+U6EBcCZBDb+x+wxR
 +nUn4G2qGMd0aTdhZBg==
X-Proofpoint-GUID: BuR3mm6J-H-M16EVRW7miVm70mp6ucnh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 bulkscore=0 impostorscore=0 clxscore=1011 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_045450_897683_05FB2ACE 
X-CRM114-Status: GOOD (  19.89  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBKdW4gMjIsIDIwMjYgYXQgNDozMeKAr1BNIDxGcmFuay5MaUBvc3MubnhwLmNvbT4g
d3JvdGU6Cj4KPiBGcm9tOiBGcmFuayBMaSA8RnJhbmsuTGlAbnhwLmNvbT4KPgo+IFVzZSBmd25v
ZGVfZ3JhcGhfZm9yX2VhY2hfZW5kcG9pbnRfc2NvcGVkKCkgdG8gc2ltcGlmbHkgY29kZS4KPgo+
IE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEZyYW5rIExpIDxGcmFu
ay5MaUBueHAuY29tPgoKUmV2aWV3ZWQtYnk6IExvaWMgUG91bGFpbiA8bG9pYy5wb3VsYWluQG9z
cy5xdWFsY29tbS5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ft
c3MvY2Ftc3MuYyB8IDE3ICsrKysrLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9x
Y29tL2NhbXNzL2NhbXNzLmMKPiBpbmRleCAyMTIzZjYzODhlM2Q3Li4yM2YzY2MzMGExNWE1IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4g
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMKPiBAQCAtNDc5
MywzMCArNDc5MywyMyBAQCBzdGF0aWMgaW50IGNhbXNzX3BhcnNlX2VuZHBvaW50X25vZGUoc3Ry
dWN0IGRldmljZSAqZGV2LAo+ICBzdGF0aWMgaW50IGNhbXNzX3BhcnNlX3BvcnRzKHN0cnVjdCBj
YW1zcyAqY2Ftc3MpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGNhbXNzLT5k
ZXY7Cj4gLSAgICAgICBzdHJ1Y3QgZndub2RlX2hhbmRsZSAqZndub2RlID0gZGV2X2Z3bm9kZShk
ZXYpLCAqZXA7Cj4gKyAgICAgICBzdHJ1Y3QgZndub2RlX2hhbmRsZSAqZndub2RlID0gZGV2X2Z3
bm9kZShkZXYpOwo+ICAgICAgICAgaW50IHJldDsKPgo+IC0gICAgICAgZndub2RlX2dyYXBoX2Zv
cl9lYWNoX2VuZHBvaW50KGZ3bm9kZSwgZXApIHsKPiArICAgICAgIGZ3bm9kZV9ncmFwaF9mb3Jf
ZWFjaF9lbmRwb2ludF9zY29wZWQoZndub2RlLCBlcCkgewo+ICAgICAgICAgICAgICAgICBzdHJ1
Y3QgY2Ftc3NfYXN5bmNfc3ViZGV2ICpjc2Q7Cj4KPiAgICAgICAgICAgICAgICAgY3NkID0gdjRs
Ml9hc3luY19uZl9hZGRfZndub2RlX3JlbW90ZSgmY2Ftc3MtPm5vdGlmaWVyLCBlcCwKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0eXBlb2Yo
KmNzZCkpOwo+IC0gICAgICAgICAgICAgICBpZiAoSVNfRVJSKGNzZCkpIHsKPiAtICAgICAgICAg
ICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKGNzZCk7Cj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgZ290byBlcnJfY2xlYW51cDsKPiAtICAgICAgICAgICAgICAgfQo+ICsgICAgICAgICAgICAg
ICBpZiAoSVNfRVJSKGNzZCkpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9F
UlIoY3NkKTsKPgo+ICAgICAgICAgICAgICAgICByZXQgPSBjYW1zc19wYXJzZV9lbmRwb2ludF9u
b2RlKGRldiwgZXAsIGNzZCk7Cj4gICAgICAgICAgICAgICAgIGlmIChyZXQgPCAwKQo+IC0gICAg
ICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX2NsZWFudXA7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgcmV0dXJuIHJldDsKPiAgICAgICAgIH0KPgo+ICAgICAgICAgcmV0dXJuIDA7Cj4gLQo+
IC1lcnJfY2xlYW51cDoKPiAtICAgICAgIGZ3bm9kZV9oYW5kbGVfcHV0KGVwKTsKPiAtCj4gLSAg
ICAgICByZXR1cm4gcmV0Owo+ICB9Cj4KPiAgLyoKPgo+IC0tCj4gMi40My4wCj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
