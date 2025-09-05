Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 275E9CA101F
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 18:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJTvrhlF+U9N3KUIe5Dq14t4bUTGsuAlLpt5/L8i64g=; b=1mzrXjz+6Nh3zN
	GFw0ybEyKFsx3iUKp6mGUolorZFuUBC4ptkOdDZc4Iij+brr43S/PMHoJZnpbbDQn1xR55maeef6f
	A5h3HFWuIy453Ew4i8pHfDszTIFDAhYyJC6ZqZlt3DmyoC4dRq4/ngpD/eZySovyPZBcmqoBcfA4n
	SRxqjBovobMtwETnz0jNgMRuYGl7gkYnN1MZYN4dMETDKQZNtosgJiy7NHHaEfLlHLoEVfKH5Ewgf
	sp29ywd+GIaSg01cQYIuB3PZgc2EXFFUYq/upknGPYim3k2H2HBNgucZ7UNXwx/6gNY3dHyI99yCz
	bXIj2P7r5W9Xebeg0d3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uubD3-00000003nt0-1ycb;
	Fri, 05 Sep 2025 18:30:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuXUe-00000002JZ5-2gUR
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Sep 2025 14:32:50 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58574g9n023158
	for <linux-rockchip@lists.infradead.org>; Fri, 5 Sep 2025 14:32:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2blvhr/dbGiJffwZJCFo7AuxYx4MvDnwJkLcFgb+E/0=; b=Jf5ezg7jKEfuSLmE
	QhCA82MK47MA9tyOYEr6pErZQJDBB9hqgJV3BXDGqFBUtr9wj8fUkXfhuA1GcCZk
	I0MG4jRnI9Rt5sQtPjDckWFld5fAO+fUz8Jn2rOBGZ5G96+/4rOIRBJm+nFDwWJz
	utB639Q7kiEX6cUXa/lU+H0T2gkAFIcN9NvDlMwhfv3tzX6FMndKm5274MYzOFW2
	PzHifR6r/UtYAvFZlBRiBUr2giahmfACP+xQAvndYO+eU+zRennNQpvYxzG7f348
	9AbCFZSw2/Mgned8c2b6YeY7a/vVhW471QRi18AihrW5VJK+Q3cB71HEGpojLe7y
	tkQT1A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0euk1e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 05 Sep 2025 14:32:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b3349c2c38so62341981cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Sep 2025 07:32:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757082766; x=1757687566;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2blvhr/dbGiJffwZJCFo7AuxYx4MvDnwJkLcFgb+E/0=;
        b=Mm31OeiQRTAqa3mAIcZt8Hp4dtJyz5llZVaj/9J5n5EqxUrIV3tm9bH85kjn7TkMPt
         Y4IacnLRXC7oSdb32tnfPFjJsEf4m/KmqMfFh+AH3qM6g5x5ptzVEYijOZB9z9Ux9dgp
         NZXU3gtVYW6XAv+pw7P1g2S6pVyIFIDfEZ1W/b4ZGGXfjY9acY3+HizvfVsEFqZavTRh
         5LBS4UQ2jYnuSHN7irutnKrf1adKVtkZu/tV+X7GEEqtFNJDTm0t9uHOkJbV4m3Sp61E
         U7CsF0TJZkmhb8mPM4hshEXg/iAXYcAJ+pnYIf7jTw/HjQIOM+XUyU/CJtSxspH31T1G
         jarg==
X-Forwarded-Encrypted: i=1; AJvYcCWt0CPCL0fcik2ebcabGvf1MvnDozSv894X/3e9mM5Ps+eJCWgHHeKpTCfaY1KuMo2Yr+7GNhVvfau1Jy/7aw==@lists.infradead.org
X-Gm-Message-State: AOJu0YydN2nT6mUi9rQJb58spEnZ+EcSoYHGVdQmuJcinqIQ1HdrwKsZ
	9yiBu/IoP8W/U3ZAKGn6cKAc/fVy4gbvz0U9Peys8yiwpKAfelALhnIxNl11NMw5plvVfr7hw2L
	06sUo4OQktn4kjcdqMW0slFJnjeuSjCKI2em+Z3goRz9C6v8X7ofRk9wQPGFlzqHIY9FUStymRs
	8=
X-Gm-Gg: ASbGncs0EeVcFLhLZFfUy5hI9s+pqJmPwZQ6vtrT7OaGrNPSgR0ZeQx0fo25h7YxvKs
	fEcfmpWFwU/Co4noH0T134cBv5/7KYGgH4WBHHIRzQ4dSIIPIE2v2VUrQBb5x83EmEi00IHJo6R
	jSTusWll3eAs6YuHNgatuM/lpJCwgqHrPH0JBK+pc0pYjGm7zo0S729UzdDXWAUCd41WrdCb3vg
	32+Yhf/y5g0ToflvRB4Sv6OF8T+f2KBzT6oQ2xecob1ep7A9gbHHwyd143JgFqm6HQhDe1BjGKP
	28YkDB1hqULcaM+BhMSLoOpvsxLeNZtKNMLHWfBgiV+/EKNhMU5R9G2CZjOHMMee1VdrV2UMWXo
	5e2rvRP57X83vP8xte2+osGmMGAsSq0L+5Bk1TnqXfNK4W1g/BPs7
X-Received: by 2002:ac8:7fc8:0:b0:4b4:9773:5870 with SMTP id d75a77b69052e-4b49782a0abmr117944951cf.21.1757082766325;
        Fri, 05 Sep 2025 07:32:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgurbO0eCRsGdU/aokL+NeCbcf/yjmx/Jn5Y5VhJVqbPt0y1YnlOogs/MWAp71DHWK7oEdoQ==
X-Received: by 2002:ac8:7fc8:0:b0:4b4:9773:5870 with SMTP id d75a77b69052e-4b49782a0abmr117944111cf.21.1757082765691;
        Fri, 05 Sep 2025 07:32:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad523b3sm1776126e87.151.2025.09.05.07.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 07:32:44 -0700 (PDT)
Date: Fri, 5 Sep 2025 17:32:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, mripard@kernel.org, neil.armstrong@linaro.org,
        andrzej.hajda@intel.com, jernej.skrabec@gmail.com, jonas@kwiboo.se,
        Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
        rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v7 1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
Message-ID: <6qouaxhcwr4rxva7vgq7yy274imiufdtp3ae4mmirzt7hycxc6@4g26bzmhc37h>
References: <20250903110825.776807-1-andyshrk@163.com>
 <20250903110825.776807-2-andyshrk@163.com>
 <u72vkfojufgvuqwuqpvgvnip3wogpgdcuc7bn46zo3bp7ogbu5@fmqotgyahrsn>
 <786c050a.6d2.1991751593e.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <786c050a.6d2.1991751593e.Coremail.andyshrk@163.com>
X-Proofpoint-GUID: RklhLU9Ep8ZNUVt3diavVAJLfzJiSk_6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX/Km9tabWS79A
 w/YEo73fIQOI1df9m8MvH9yhWUitj2ck/zoSHVuTi2e76ZtWIn4IkWImU6JMFgjsf36rFaloB+X
 0LDrF+jbqedKCRjjP7MEW2LshIGVF833ei6RFeUOod52SI1yr4xLK7CqC14Bjm3G7/9QRyTBI7V
 TSfmzs2jIFvw/QM8jgvBhCLz8J6dCw99JfRI8XpEw8W/a3ieMSC9foWS+O78nguYzyaIRymcNYI
 kePOHvajMzPFmP4JtTPIaIuxSgO1nJUcQZzATJCUHRZHrU+/nBL+I+uPnitwiPG4J0jRcFh2MKq
 C4xxzQxQwNTMxFu3TRNZ3on++MRnQLu/bmRxdR6oYbnGi8HyqZrZ90QccZZUcuIdak8unpu+pBt
 3Kb9jwv7
X-Proofpoint-ORIG-GUID: RklhLU9Ep8ZNUVt3diavVAJLfzJiSk_6
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68baf48f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=Byx-y9mGAAAA:8 a=EUspDBNiAAAA:8
 a=s8YR1HE3AAAA:8 a=5KrWf_2bJ-0ShaoMUpsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_073248_723232_FCC88446 
X-CRM114-Status: GOOD (  33.06  )
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

T24gRnJpLCBTZXAgMDUsIDIwMjUgYXQgMDg6NDA6MzFBTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6
Cj4gCj4gSGVsbG8gRG1pdHJ577yMCj4gCj4gQXQgMjAyNS0wOS0wNSAwODowNTowNiwgIkRtaXRy
eSBCYXJ5c2hrb3YiIDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+
ID5PbiBXZWQsIFNlcCAwMywgMjAyNSBhdCAwNzowNzozOFBNICswODAwLCBBbmR5IFlhbiB3cm90
ZToKPiA+PiBGcm9tOiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4gPj4gCj4g
Pj4gQ29udmVydCBpdCB0byBkcm0gYnJpZGdlIGRyaXZlciwgaXQgd2lsbCBiZSBjb252ZW5pZW50
IGZvciB1cyB0bwo+ID4+IG1pZ3JhdGUgdGhlIGNvbm5lY3RvciBwYXJ0IHRvIHRoZSBkaXNwbGF5
IGRyaXZlciBsYXRlci4KPiA+PiAKPiA+PiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFlhbiA8YW5keS55
YW5Acm9jay1jaGlwcy5jb20+Cj4gPj4gCj4gPj4gLS0tCj4gPj4gCj4gPj4gQ2hhbmdlcyBpbiB2
NzoKPiA+PiAtIFJlYmFzZSBvbiBsYXRlc3QgZHJtLW1pc2MtbmV4dAo+ID4+IAo+ID4+IENoYW5n
ZXMgaW4gdjY6Cj4gPj4gLSBSZWJhc2Ugb24gbGF0ZXN0IGRybS1taXNjLW5leHQKPiA+PiAtIExp
bmsgdG8gVjU6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUwNTEy
MTI0NjE1LjI4NDg3MzEtMS1hbmR5c2hya0AxNjMuY29tLwo+ID4+IAo+ID4+IENoYW5nZXMgaW4g
djU6Cj4gPj4gLSBTcGxpdCBjbGVhbnVwIGNvZGUgdG8gc2VwZXJhdGUgcGF0Y2gKPiA+PiAtIFN3
aXRjaCB0byBkZXZtX2RybV9icmlkZ2VfYWxsb2MoKSBBUEkKPiA+PiAtIExpbmsgdG8gVjQ6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUwNDIyMDcwNDU1LjQzMjY2
Ni0xLWFuZHlzaHJrQDE2My5jb20vCj4gPj4gCj4gPj4gQ2hhbmdlcyBpbiB2NDoKPiA+PiAtIERv
IG5vdCBzdG9yZSBjb2xvcmltZXRyeSB3aXRoaW4gaW5ub19oZG1pIHN0cnVjdAo+ID4+IC0gTGlu
ayB0byBWMzogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNTA0MDIx
MjMxNTAuMjM4MjM0LTEtYW5keXNocmtAMTYzLmNvbS8KPiA+PiAKPiA+PiBDaGFuZ2VzIGluIHYz
Ogo+ID4+IC0gRmlyc3QgaW5jbHVkZWQgaW4gdjMKPiA+PiAtIExpbmsgdG8gVjI6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI1MDMyNTEzMjk0NC4xNzExMTEtMS1hbmR5c2hy
a0AxNjMuY29tLwo+ID4+IAo+ID4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL0tjb25maWcgICAg
ICAgICAgICAgICAgfCAgIDcgKwo+ID4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL01ha2VmaWxl
ICAgICAgICAgICAgICAgfCAgIDEgKwo+ID4+ICAuLi4vaW5ub19oZG1pLmMgPT4gYnJpZGdlL2lu
bm8taGRtaS5jfSAgICAgICAgfCA1MDIgKysrKystLS0tLS0tLS0tLS0tCj4gPj4gIGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9LY29uZmlnICAgICAgICAgICAgICB8ICAgMSArCj4gPj4gIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgICAgICB8ICAgMiArLQo+ID4+ICBk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLXJvY2tjaGlwLmMgfCAxODggKysrKysr
Kwo+ID4+ICBpbmNsdWRlL2RybS9icmlkZ2UvaW5ub19oZG1pLmggICAgICAgICAgICAgICAgfCAg
MzMgKysKPiA+PiAgNyBmaWxlcyBjaGFuZ2VkLCAzNjYgaW5zZXJ0aW9ucygrKSwgMzY4IGRlbGV0
aW9ucygtKQo+ID4+ICByZW5hbWUgZHJpdmVycy9ncHUvZHJtL3tyb2NrY2hpcC9pbm5vX2hkbWku
YyA9PiBicmlkZ2UvaW5uby1oZG1pLmN9ICg2OSUpCj4gPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLXJvY2tjaGlwLmMKPiA+PiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHJtL2JyaWRnZS9pbm5vX2hkbWkuaAo+ID4+IAo+ID4+IEBA
IC02MzcsMTQgKzU4NCwxMyBAQCBzdGF0aWMgdm9pZCBpbm5vX2hkbWlfaW5pdF9odyhzdHJ1Y3Qg
aW5ub19oZG1pICpoZG1pKQo+ID4+ICAJaGRtaV9tb2RiKGhkbWksIEhETUlfU1RBVFVTLCBtX01B
U0tfSU5UX0hPVFBMVUcsIHZfTUFTS19JTlRfSE9UUExVRygxKSk7Cj4gPj4gIH0KPiA+PiAgCj4g
Pj4gLXN0YXRpYyBpbnQgaW5ub19oZG1pX2Rpc2FibGVfZnJhbWUoc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvciwKPiA+PiAtCQkJCSAgIGVudW0gaGRtaV9pbmZvZnJhbWVfdHlwZSB0eXBl
KQo+ID4+ICtzdGF0aWMgaW50IGlubm9faGRtaV9icmlkZ2VfY2xlYXJfaW5mb2ZyYW1lKHN0cnVj
dCBkcm1fYnJpZGdlICpicmlkZ2UsCj4gPj4gKwkJCQkJICAgIGVudW0gaGRtaV9pbmZvZnJhbWVf
dHlwZSB0eXBlKQo+ID4+ICB7Cj4gPj4gLQlzdHJ1Y3QgaW5ub19oZG1pICpoZG1pID0gY29ubmVj
dG9yX3RvX2lubm9faGRtaShjb25uZWN0b3IpOwo+ID4+ICsJc3RydWN0IGlubm9faGRtaSAqaGRt
aSA9IGJyaWRnZV90b19pbm5vX2hkbWkoYnJpZGdlKTsKPiA+PiAgCj4gPj4gIAlpZiAodHlwZSAh
PSBIRE1JX0lORk9GUkFNRV9UWVBFX0FWSSkgewo+ID4+IC0JCWRybV9lcnIoY29ubmVjdG9yLT5k
ZXYsCj4gPj4gLQkJCSJVbnN1cHBvcnRlZCBpbmZvZnJhbWUgdHlwZTogJXVcbiIsIHR5cGUpOwo+
ID4+ICsJCWRybV9lcnIoYnJpZGdlLT5kZXYsICJVbnN1cHBvcnRlZCBpbmZvZnJhbWUgdHlwZTog
JXVcbiIsIHR5cGUpOwo+ID4+ICAJCXJldHVybiAwOwo+ID4+ICAJfQo+ID4+ICAKPiA+PiBAQCAt
NjUzLDIwICs1OTksMTkgQEAgc3RhdGljIGludCBpbm5vX2hkbWlfZGlzYWJsZV9mcmFtZShzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+ID4+ICAJcmV0dXJuIDA7Cj4gPj4gIH0KPiA+
PiAgCj4gPj4gLXN0YXRpYyBpbnQgaW5ub19oZG1pX3VwbG9hZF9mcmFtZShzdHJ1Y3QgZHJtX2Nv
bm5lY3RvciAqY29ubmVjdG9yLAo+ID4+IC0JCQkJICBlbnVtIGhkbWlfaW5mb2ZyYW1lX3R5cGUg
dHlwZSwKPiA+PiAtCQkJCSAgY29uc3QgdTggKmJ1ZmZlciwgc2l6ZV90IGxlbikKPiA+PiArc3Rh
dGljIGludCBpbm5vX2hkbWlfYnJpZGdlX3dyaXRlX2luZm9mcmFtZShzdHJ1Y3QgZHJtX2JyaWRn
ZSAqYnJpZGdlLAo+ID4+ICsJCQkJCSAgICBlbnVtIGhkbWlfaW5mb2ZyYW1lX3R5cGUgdHlwZSwK
PiA+PiArCQkJCQkgICAgY29uc3QgdTggKmJ1ZmZlciwgc2l6ZV90IGxlbikKPiA+PiAgewo+ID4+
IC0Jc3RydWN0IGlubm9faGRtaSAqaGRtaSA9IGNvbm5lY3Rvcl90b19pbm5vX2hkbWkoY29ubmVj
dG9yKTsKPiA+PiArCXN0cnVjdCBpbm5vX2hkbWkgKmhkbWkgPSBicmlkZ2VfdG9faW5ub19oZG1p
KGJyaWRnZSk7Cj4gPj4gIAlzc2l6ZV90IGk7Cj4gPj4gIAo+ID4+ICAJaWYgKHR5cGUgIT0gSERN
SV9JTkZPRlJBTUVfVFlQRV9BVkkpIHsKPiA+PiAtCQlkcm1fZXJyKGNvbm5lY3Rvci0+ZGV2LAo+
ID4+IC0JCQkiVW5zdXBwb3J0ZWQgaW5mb2ZyYW1lIHR5cGU6ICV1XG4iLCB0eXBlKTsKPiA+PiAr
CQlkcm1fZXJyKGJyaWRnZS0+ZGV2LCAiVW5zdXBwb3J0ZWQgaW5mb2ZyYW1lIHR5cGU6ICV1XG4i
LCB0eXBlKTsKPiA+PiAgCQlyZXR1cm4gMDsKPiA+PiAgCX0KPiA+PiAgCj4gPj4gLQlpbm5vX2hk
bWlfZGlzYWJsZV9mcmFtZShjb25uZWN0b3IsIHR5cGUpOwo+ID4+ICsJaW5ub19oZG1pX2JyaWRn
ZV9jbGVhcl9pbmZvZnJhbWUoYnJpZGdlLCB0eXBlKTsKPiA+PiAgCj4gPj4gIAlmb3IgKGkgPSAw
OyBpIDwgbGVuOyBpKyspCj4gPj4gIAkJaGRtaV93cml0ZWIoaGRtaSwgSERNSV9DT05UUk9MX1BB
Q0tFVF9BRERSICsgaSwgYnVmZmVyW2ldKTsKPiA+Cj4gPkl0J3Mgbm90IGFuIGlzc3VlIGZvciB0
aGlzIHBhdGNoIChhbmQgSSB0aGluayBpdCBjYW4gYmUgZml4ZWQgYWZ0ZXIgdGhpcwo+ID5zZXJp
ZXMgaXMgbWVyZ2VkKS4gSSB0b29rIGEgcXVpY2sgZ2xhbmNlIGF0IGZyYW1lIHByb2dyYW1taW5n
LiBJdCBmZWVscwo+ID5saWtlIHRoZSBjbGVhcl9pbmZvZnJhbWUgc2hvdWxkIGJlIHBva2luZyBh
dCByZWdpc3RlcnMgMHg5YyAvIDB4OWQuIEFuZAo+ID53cml0ZV9pbmZvZnJhbWUgdGhlbiBjYW4g
c3VwcG9ydCBIRE1JLCBTUEQgYW5kIEF1ZGlvIGluZm9mcmFtZXMgaW4KPiA+YWRkaXRpb24gdG8g
dGhlIEFWSS4gSSBkb24ndCBoYXZlIGhhcmR3YXJlIHRvIGV4cGVyaW1lbnQgKG5vciB0aW1lIDot
KSksCj4gPmJ1dCB3b3VsZCB0aGVyZSBiZSBhIGNoYW5jZSB0byBpbXByb3ZlIHRoaXM/Cj4gCj4g
T2theSwgSSdsbCBrZWVwIHlvdXIgc3VnZ2VzdGlvbnMgaW4gbWluZCBhbmQgbG9vayBmb3IgYW4g
b3Bwb3J0dW5pdHkgdG8gdHJ5IHRoZW0gb3V0IGxhdGVyLiAKPiBUaGUgaGFyZHdhcmUgZm9yIHRo
aXMgYm9hcmQgaXMgaW5kZWVkIHZlcnkgc2NhcmNlIGF0IHRoZSBtb21lbnTigJRJIHB1dCBpbiBh
IGxvdCBvZiBlZmZvcnQganVzdAo+IHRvIGdldCBteSBoYW5kcyBvbiBvbmUuIFRoZSBtYWluIHJl
YXNvbiBJJ20gbW9kaWZ5aW5nIHRoaXMgY29kZSBpcyB0byBjb252ZXJ0IGFsbCBvZiBSb2NrY2hp
cCdzCj4gZGlzcGxheSBpbnRlcmZhY2UgZHJpdmVycyBpbnRvIGJyaWRnZSBtb2RlLCB3aGljaCB3
aWxsIG1ha2UgaXQgZWFzaWVyIHRvIHNlcGFyYXRlIHRoZSBjb25uZWN0b3IKPiBwYXJ0IGludG8g
dGhlIGRpc3BsYXkgZHJpdmVyIHNpZGUgaW4gdGhlIGZ1dHVyZS4KCk5vIHdvcnJpZXMsIGl0IHdh
cyBqdXN0IGEgcXVpY2sgb2JzZXJ2YXRpb24gZnJvbSBzb21lIFRSTSBleGNlcnB0cyB0aGF0Ckkg
Zm91bmQuCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
