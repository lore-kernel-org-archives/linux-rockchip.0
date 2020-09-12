Return-Path: <SRS0=MDEE=CV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 329F8C43461
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2020 09:31:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C912207EA
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2020 09:31:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="lKiyqONi";
	dkim=temperror (0-bit key) header.d=outlook.com header.i=@outlook.com header.b="kt9PWkI3"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9C912207EA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=outlook.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bbOq+kNsgBigAZ652/9F+tUDYHjhdDKpfzD141JtpXs=; b=lKiyqONi1L0k4Tj/GQrTm7vbo0
	N+gGVo8Bdas/FcMeyVwnJ4EXn+SG8jmi1jLFw7Eelj0WO936MZnu/03nEDEyY+CrEL3M+/3LIDGeP
	p1YWqro81S2WW/LdXHkvchVZDqrrES/DogTric8p+P6iKISeQwpaCFFWamWZruaeHlCKJSLDCnZ0U
	KpDf4B88Myd36AsSsPqPyT0ozvLF9uowVqnf/gXkHYU3HbbdNukeqo0NWyvgVLuYZGRhab5Nkh1T8
	zEzYp9k1QLflPR5lrKXTv50ggRupYTjeouesYNMsDXUTsSOnnBOSGHl+ZWBRuZuaFZ6Or649dxFAk
	wyFvQVTA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kH1sP-00071K-6H; Sat, 12 Sep 2020 09:31:21 +0000
Received: from mail-oln040092010071.outbound.protection.outlook.com
 ([40.92.10.71] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kH1sN-00070b-HT
 for linux-rockchip@lists.infradead.org; Sat, 12 Sep 2020 09:31:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GntlnhsSUwnDgv3Y9cuO9ITPGz2XmQvZxly44UbCrk4nzc9Eng0R1RnPY7dtlGO4W0vAHu82APvoB7Vv1UB02DWgktN7dj2fWnRJoT4nkuxYCIS6p/T72o0/1Q8KyORC7asTf/CKKK4YNcE9Cdu096o29lAvnHOuN42tcb1RCFA/B4TerLu3n6I0n6UzaeB4WBQyDiCGShA8YRPpRkxfQ9ifhF8siv9YkWfpxcP8wc8JQHH2i9vBC9rutKil9orgvn64QAlxRiyhQdJwDMAME60iNZYhylP+46k641A1QHrIr3KcHtDET12VC855rBXU82j1D0ulZ/I7wj+kKEYXDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hD9Cxu0Xox3yPd84Tm0rbdygm63dgn5pm9JUtiP/iCQ=;
 b=XqY9NATH3A92/9WlhifZuX+TEvNeU0enJUoscLMlMciQkiyVpXAm0HoFLJUatOk9TezlfYPHAWct+RsQOiyAFutOEMEedOK9OWaLIqgXM0pnjexhuzVOabRU2JBSK1t0FtDcq9zM/WJbYxKVCcCoKHKvgVrfRwRVW/yrfresBOLYQe2eifMQ8R4B1cK6Bt14d4r+HZZxhf+QGxRpIFBcQOjmZD+8BneWRlERDin73NArUOu0Yfl4RwwParTSNW0ld3tjMU3JoI1FVXbrxNL+Gywx/U/Ke3X/P7SVLQbKfmG1t9MRmOuKo46cR87ES874cV3KJZZWjETNghsO8qsH7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hD9Cxu0Xox3yPd84Tm0rbdygm63dgn5pm9JUtiP/iCQ=;
 b=kt9PWkI3k6AuuMD+5g0mkDHcl0bn7A5bKJqf2jIoYyd3tTLmgrCK+k7Mlc7eOX/NLaFvENex3+rx3EWEPF2Y+51boLHljyUYuC97ZvwhnTpIopRKtlhAVVx1R2Br8GNGL8tkqV3Z7Tfm9mPVK9gBKYxxWgyep164g5KdTWZ2YWGqDhFDhubfxGDkeFsASSd7qPnJNCY6t0m1b1CrISVWFCu6T1LXx1kSNIgWYwGy/PgHfRdIswM2WM7e7ER5mflnVhBefZ1NIr9Byvmy1pj31PIf14wUKXdy8WEImpQiVfuLmN+E31or1qZ7K5HC88KvQWj3KmDLSXyPAQQ5KuFPiw==
Received: from CO2PR04CA0150.namprd04.prod.outlook.com (2603:10b6:104::28) by
 MWHPR21MB0173.namprd21.prod.outlook.com (2603:10b6:300:78::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3370.4; Sat, 12 Sep 2020 09:31:15 +0000
Received: from MW2NAM10FT055.eop-nam10.prod.protection.outlook.com
 (2603:10b6:104:0:cafe::93) by CO2PR04CA0150.outlook.office365.com
 (2603:10b6:104::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend
 Transport; Sat, 12 Sep 2020 09:31:15 +0000
Received: from DM6PR16MB3163.namprd16.prod.outlook.com
 (2a01:111:e400:7e87::4a) by MW2NAM10FT055.mail.protection.outlook.com
 (2a01:111:e400:7e87::341) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend
 Transport; Sat, 12 Sep 2020 09:31:15 +0000
Received: from DM6PR16MB3163.namprd16.prod.outlook.com
 ([fe80::79bf:58be:21fb:e7b4]) by DM6PR16MB3163.namprd16.prod.outlook.com
 ([fe80::79bf:58be:21fb:e7b4%5]) with mapi id 15.20.3370.018; Sat, 12 Sep 2020
 09:31:15 +0000
From: "zhangn1985@outlook.com" <zhangn1985@outlook.com>
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: duplicated asoc  widget in pinebookpro dts
Thread-Topic: duplicated asoc  widget in pinebookpro dts
Thread-Index: AQHWiOauhjh2NiJyoECkK9mZF1vL1w==
Date: Sat, 12 Sep 2020 09:31:15 +0000
Message-ID: <DM6PR16MB3163A1F904823FFA424C52B1CD250@DM6PR16MB3163.namprd16.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:E7A37437BEFFCC64789DFC1E5B19D11C3F6C8656149275D6E80C92AB308D116A;
 UpperCasedChecksum:DC8B13ECB523581327035945BE97CFC7DBE8E1A8E2A2AF5F24AE163EAE5EFCD2;
 SizeAsReceived:2628; Count:41
x-tmn: [J2sz1iBqCBUVKm/3kxgRDrpMozctprWj]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: c3d0f7f7-5adf-40f9-87aa-08d856fe98a7
x-ms-traffictypediagnostic: MWHPR21MB0173:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xQ7p7Atd0lyDTKBVTohEOyvK5ptx4rv3P0pZyd0BSgUY+W7jdAvo6YgwfXBbo1KBRW6r0ytUNW+5ABNf7gLhhl//i459+oF5kHUVZgVyH/CEpIqfug5mCqOswtzmBw1/0HER8i7KG38a3tDT63/LGZ0cKLcxkVLjoZIHrtq+87BtItJ9Jfiy0pwNe0Ge2saG
x-ms-exchange-antispam-messagedata: dXSecelVb2hDVoPvmrh3LibMaRxWs2B+30j2BstiidrdwHWv+of/rHuec1fjAiq84sz9nEJeQdul4ysQGvasJFifnwDkG8C/0WcCJLxCSTibecR6nhiAojwJWGTYfFRn0p0sYitKCWULtOh33Dcf5Q==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM10FT055.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c3d0f7f7-5adf-40f9-87aa-08d856fe98a7
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2020 09:31:15.5213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR21MB0173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200912_053119_658205_6B85D2BB 
X-CRM114-Status: UNSURE (   5.79  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: "zhangn1985@outlook.com" <zhangn1985@outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi, =

=A0
During read pinebookpro dts in 5.9-rc4, find:
=A0
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 simple-audio-card,widgets =3D
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "Microphone", =
"Mic Jack",
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "Headphone", "=
Headphones",
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "Speaker", "Sp=
eaker";
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 simple-audio-card,routing =3D
=A0
=A0two "Speaker" widgets, duplicated or one should be "Speakers"

BR.
Ning
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
