Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EF37C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 11:09:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BAFB6128E
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 11:09:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2BAFB6128E
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DqEpc3BP9S+ZnF0zeoOJuUeUgzsuyehwvQQrD8BPFcA=; b=yikgqZxDDvvfvU8D2r/pJk+ZqR
	Mo45aPlX74G2c1hO+KiAd3tPa6NKtkFSH4+tkiA24WkrM02smNCRTiRLHvi1zJUmjVlVTGcdUO6EV
	Pyqpj8J7O3aW0wngGnpmqtd+rkS9Qt5hFd5XV33jSM2c9eSUlcJ73H2tL+ddOzd8gtU0fORMyz9au
	3zGckHuD6ESop+7y4IFV64N6JoRfeUejeEoui8SWmH5h3i15XjLzMXRf9JuVRJbbKm7JreUIstftt
	iBt0WNC1xoNEhyAbDMVSVDZ581uXx8CB9sHZPuAQGY38zsgNaMOtbD0EDPJOuygYS3AwzqEnhZGwo
	v0mRV8fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnfI4-007WeL-Oo; Thu, 18 Nov 2021 11:09:16 +0000
Received: from mail-am6eur05on2065.outbound.protection.outlook.com
 ([40.107.22.65] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnfHq-007WaZ-PA; Thu, 18 Nov 2021 11:09:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DieY/ZCEq0xnrl/KwjDBgbdvnAbtVu+1XWpF0TEZ91XAAK5xmT6xlBM8tSEOi550zmSyz+mmeLOeF910N0Xuq6QOSWq0a+QlNBDMOhik67ne0rikg4PUMJ8hE/BMt9NfclAyMxiXJ4B5z69KF7vbGt9Qdr2Dz5aPT7K4CdMZ5LG+9Yzta4Eu9Agxuq4x37uIpyqogTtFoEpWRrP1hiOy0FlQBUxetVw+nPxfQ3A42JM4qYSeb5j9saXgMgqZKHyfpOeh/mM4X9ytQ1a007TDLaUQ10SVsdTgQEKdBN8gR5yl/NnQWVWGL1s85NhPuQhhbje14U9kloyWzfJp8RidYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ErEAgQK1z+Mv6UCtPqySqPKXW9XddF7MhDbIlfwd1VE=;
 b=W+o8sj1xUoxrDP+Mjfs1nJ3baRvmLu7WLsxLn8CefLXp9ETMUXCZzrlWkWNzmyo2VorDtINWBNq41m9GsDJDnm3Trlk/sn78+wdDePQ4Q4rZ5h7i8bwXjha76FhPSzi61GOyeZzJleZez+YczG7nM8G74Cm/F85RqrQHNRlGLqiiyjhIKy4l2iJC+NrbrfdobECGCcrsAV11fG78PjUq6QjIFkpOpMs2PA9ceHB8lEoDfwkjArh/ZsCGj4d4kjnAZVQTiVKaxXHY7NxAhJvfL6SMkdB5M6Yj7ZUxuJsStk/5sC5iec6wOZRbv22uBsHZVaAsL7EYJVMdh0iWNCaJUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ErEAgQK1z+Mv6UCtPqySqPKXW9XddF7MhDbIlfwd1VE=;
 b=XBS0BQq6FeG0kdaUz46Q30g/WH4VD+9hEGLQhDU7k9f2gg0pFS+TkJFW6r6eV2Sh5Job4b3CeatRv9kOiJoBZh9FjtazEDzhrYgVLUltwCSuGi2xZIXV6FqQY2qRY2Pqj2S0nzsUuivMCJmDb5WnJp1TOYG1BBplkROztIgh3CM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB4709.eurprd08.prod.outlook.com (2603:10a6:10:f6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Thu, 18 Nov
 2021 11:08:50 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4690.027; Thu, 18 Nov 2021
 11:08:50 +0000
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To: Kever Yang <kever.yang@rock-chips.com>,
 Daniel Stone <daniel@fooishbar.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, kernel@pengutronix.de,
 =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com>
 <4310886.V3yF0ifEZO@diego>
 <CAPj87rPNSt7nZX93prAYD3Emf-34RdTZWp_1TOuAybBebObZhQ@mail.gmail.com>
 <fba695b7-863a-c492-0209-41bc07c7baee@rock-chips.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
Message-ID: <b6ab5d5b-53fb-8c07-07c5-644f79cb3277@wolfvision.net>
Date: Thu, 18 Nov 2021 12:08:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <fba695b7-863a-c492-0209-41bc07c7baee@rock-chips.com>
Content-Language: en-US
X-ClientProxiedBy: VI1PR0701CA0058.eurprd07.prod.outlook.com
 (2603:10a6:800:5f::20) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from [IPv6:2a05:1141:1c9:7c00:2971:328c:3026:3149]
 (2a05:1141:1c9:7c00:2971:328c:3026:3149) by
 VI1PR0701CA0058.eurprd07.prod.outlook.com (2603:10a6:800:5f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.9 via Frontend
 Transport; Thu, 18 Nov 2021 11:08:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9ee3caa0-f15d-4787-47eb-08d9aa83cc85
X-MS-TrafficTypeDiagnostic: DBBPR08MB4709:
X-Microsoft-Antispam-PRVS: <DBBPR08MB4709B2E962F8B96701E4F97DF29B9@DBBPR08MB4709.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +JEa1rQRf1Yh7Ld7sZT2ry+ukSS40dOyCRRTjEjQHLYnmcrg3RgN5OSiKCVTunYaezLFSzilcHDV4BbUdwTfmr70nG3xjfvDLPllApiAL0osde3hueO0MUX4Ikfi56FIRQtArZvpoaG+MzdwSQuetwLDjq2ymAbQ6ndkruqwTaI3OaGRDrc3QIxbnf6lzx0yw680do4Tbrfhji4/qyxbpyYjfshBVYRMhLFngAVPQm3AvzYv5ohsqveS218LNwYA2UfpqSlRtCMj2pl7mqdd/AS8r5oBgnlM2yA9Cr2Y8Nse6t5jJXQJXCeOr8M6s3BBXsAWtIptcbE+auKAmVDLtQwyi14teIRjqrvgDpoU5c7kQQlb/o0GF1FXMBjKNf5yCGzQ8q5U5yiCPCeuUniZ9Q1+HjjoXFJOsdHkq+jGvvX5QLwaO3shwsNVUlYejmFbU8NEkqHpoHErhhDAz8ejVo5CccyX01sRSnMB+fdpnWXk69SXe57HAuyASNTqOz8YGCb80m5I9O8DbpdBfkQRbbX54TiWdMqRE1NuD5kcQw4qlDgFcXsLLAfsyFXNozuxSrZ7Yj8zj3w2l2CPNT6VIv7tHNl48ba/+tH6mv3VPQbC9e8nyGbT8G/erJ4ySDKPDDz6t1iC4wRH05MWwhkIzL5jvLeCycJvs0D587vUgV7rbWif2OGNKK8e/CHuhNkGUi1tBp72+pUyU3Nq/9xo7liXQsQxEiXNxx5UcG5M3mQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(31686004)(316002)(110136005)(7416002)(83380400001)(66574015)(66946007)(36756003)(86362001)(66476007)(66556008)(8936002)(44832011)(54906003)(31696002)(53546011)(4326008)(2616005)(2906002)(508600001)(5660300002)(186003)(8676002)(38100700002)(6486002)(52116002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmV4MVJSR0pPVHJPOStRWjNBN0hlQVVSeWlYU2I4L05ZZkp5OHJzUFdVSXZZ?=
 =?utf-8?B?azJnY3lWblRhLzdUZkRBRHFzRmNUWkkxQnE0ZEErckFKa3ozdmhTdUd0QjAx?=
 =?utf-8?B?MmJ0MkVsVVN1N2tlUmcyWVNENTdnaDJRRGVRclExelBWSGR2Tzc5UFFpZExZ?=
 =?utf-8?B?MVRvZFJrV2swdDNIWTViNHRuYnZ1ZENXV1Vwa05GQVN6UGxwZE9RRkFKME9s?=
 =?utf-8?B?Nzl5TGh0ZDVoeUJwNXU1Q2N0S0Y0TU9EVHFJNFVqN2wwbWdRWTBMaHBUQ1RJ?=
 =?utf-8?B?TlZxSkcyd3NhYVFTS1dSZS9zM1M2Z2UyZmlVYzRldER4U01Fa3hRMmJhaVAw?=
 =?utf-8?B?clpBa2hSYUlVdUJtQStSSHd6KytrYVFuT2ppQWpoenV1OTNmUG4wN2t1bXZB?=
 =?utf-8?B?Smt3N3I3MzM5cklld2ZhVDhFSUZwQTE0WlJOQWhkOXdnK21Meko1dnBxWmZU?=
 =?utf-8?B?MUhxbWZYUHVkb2gvZEVYN2tZZGtWQXdNRjhwYVc0RlJNU2JtQ3oyd2RDRWNB?=
 =?utf-8?B?dnBSOUU0STVSN1JJZThTRVhEQVJ6NHc1ZW5XMnY1dVJqQVlDaHh4UFo2bjc2?=
 =?utf-8?B?cHJJQUFnQjZvMy9SL3FkRVZHMjFPd2h0TjR6cG8yYlV5dDA3aFN2YVUyT2Z2?=
 =?utf-8?B?TExDSGk5bXE5Q1NMOXJob0VjcnNoS2kvMXY1K0VuaEhWNjlRUHZlNmE2d09L?=
 =?utf-8?B?QUlaaWY4MlJoUGtTdWxNTkJVU0FMUWNoY1FBMStWZG5NMXFzRElaTFR6TStU?=
 =?utf-8?B?SHVmaDA2ZmdwVjlNcGpSMlNadGsrclpxWWMwdG5WTnFoOGp6UkNEMUNRZjJw?=
 =?utf-8?B?WXltUHBoYjByd3gxT2p2Q3hKWFlUOGRSVmQyNnhSUVJKeVhqVXY1SjBES2xh?=
 =?utf-8?B?QzlZOUY1ZUNUV092b2ttMjRwWGxQS1dOUmZsOGhYalBEV091UnhoeFgzNVo2?=
 =?utf-8?B?M1FMK0ZvVExySGF0RzU4MXZST0hrR2NLZlF5YUEvOWhJSXhjQlN2WWdYWkpu?=
 =?utf-8?B?SlAvU1NLM3FxNGR6b0FyRlZheDBsdjNDVDhCRTJERk9rTG1Gd2luSjViWndy?=
 =?utf-8?B?NDlCbkI1UnovRWN2dXoxTGlhcXFJYTlrd2NrbXNSM2tOS2xrQUkrM3cxTENF?=
 =?utf-8?B?S3dSRWQwVFM4OXVSMGdtL1gyK1EwMFdGS1RFRkd2bXVCUVZCR3kzM09WTVcv?=
 =?utf-8?B?Z0dPMUxSalRFbDV1Rm9KaXlDMkhOYVhnUDdJS2ZHMXphTEpJMFRMVlBFY2s4?=
 =?utf-8?B?S1pWVnFlaENoNGVESjFCSUV5WURJam11YlVvNktFem54SXdKd1hKeVh5Wkxu?=
 =?utf-8?B?NERzaVJoMk1CS0xPN2lvWHN2ZllDL1hGQzlna2tXUi9Ic0RVVXpBTW9DWEpS?=
 =?utf-8?B?UThJNloycEVPWlNpU1dUN0dBZ0VlK2RiYlc3MjV0c3NVZzN4R1FsV1hrYWFY?=
 =?utf-8?B?VW5YLzVSc1VOZjBpQWRkYzdhcit6NFo5RndONTVyQ2tWSFJDcmFGK01TOUJX?=
 =?utf-8?B?TGw4UGQwMnFFR1hUdEs2cUJ1ZVdrdVYwM3VXSGtibzAxcnF4VUE4OW5PV0ts?=
 =?utf-8?B?TU9qNVY0a2d6SnRxczZNaUgxUWpYZGtNaUxzR2YyZDFiMFkwekNnVHF1TnJG?=
 =?utf-8?B?YkVkc1NhTDVUd20yc003ZDNrSTVIdy9NUXRraFkyOUd6a1ZOTGlTU1B5TFhR?=
 =?utf-8?B?dVI1OUtsQldUUHFsVUJvcW0xYll2OVR5YStXRlVXY2x6TDlHNmlmdENIVmts?=
 =?utf-8?B?UUVWSzYyMmMyaVJVSDZjaE42RlNFTEFxWnhBRGhrVEc3TE1rVytTOGR0M0Nw?=
 =?utf-8?B?T1RrclMycVFVMWNNSFFFR0luWVdiRXphSTZhTUFSRTM4b3BSc2tRMU1sSjdE?=
 =?utf-8?B?K1dCSlpjMDRKNGRLVldFRnYydys1cDNrNWtaV1owMzVFaUN4K1E4ZVNiWTJw?=
 =?utf-8?B?YnhMTEhtdExPamJxZ1lTQUN0bVRrVlNsME1QU2VTQ245M2RMYnlTVmtqWjIv?=
 =?utf-8?B?dTBxbVhYVTdWSVVlQ3hnK1U3K01qc2FxT0FWcWs2RXpPK1p5dTAxMThObHFH?=
 =?utf-8?B?YWdOMU1MZnVRN2tPWXJ4Z2NaNVNLdUFFWkRqTWdxRi9JWWw5M0g1bTBLdU82?=
 =?utf-8?B?YWpXUS9mei9Qb0hYY0p6RnBkMkJlWjRPeVdWMmQ1ZW1BbjAzdEd3VEg0eUVU?=
 =?utf-8?B?QXd4R241ZE54MTdwWS9RMHI5SXc4elhqbE9OSjA4M1psWTIxcFRmbzJ1aGFE?=
 =?utf-8?B?VXE4amdGSmJUZE5QQnlEb3Fka2ljNWZEWnZ2akVpMmxGOEpyYW1yQ2p4VU5G?=
 =?utf-8?B?MVFmWGh0RnpyRzcxQTlVKzBrd3RuSnkyWUZWYUxNcy9ubkZaVm1JUT09?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ee3caa0-f15d-4787-47eb-08d9aa83cc85
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2021 11:08:50.3167 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2asKV8A0ELLihEEhCCIjD5K21XoPeOhvrnbeFYTPi9f6X36JuAepI0146+q6OTE1VGeekhSjk20TkAvgMD+Oy7nlBvXtzJ9QK6dtO05eWUU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_030902_832409_FB675312 
X-CRM114-Status: GOOD (  35.06  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gS2V2ZXIsCgpPbiAxMS8xOC8yMSAxMTo1MCBBTSwgS2V2ZXIgWWFuZyB3cm90ZToKPiAK
PiBPbiAyMDIxLzExLzE4IOS4i+WNiDU6NTMsIERhbmllbCBTdG9uZSB3cm90ZToKPj4gSGksCj4+
Cj4+IE9uIFRodSwgMTggTm92IDIwMjEgYXQgMDk6MjYsIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Pj4gQW0gRG9ubmVyc3RhZywgMTguIE5vdmVtYmVyIDIwMjEsIDAy
OjI3OjEwIENFVCBzY2hyaWViIEtldmVyIFlhbmc6Cj4+Pj4gSSBkb24ndCBhZ3JlZSB3aXRoIHRo
aXMsIHdlIGRvIGJlbGlldmUgeW91IGhhdmUgZG8gc29tZSBjbGVhbiB1cCB0byAKPj4+PiBtZWV0
Cj4+Pj4gdGhlIHJlcXVpcmVtZW50Cj4+Pj4KPj4+PiBvZiB1cHN0cmVhbSwgYnV0IGFsbCB0aGUg
ZnJhbWV3b3JrIGFuZCBmZWF0dXJlIGltcGxlbWVudCBhcmUgZnJvbQo+Pj4+IFJvY2tjaGlwIGVu
Z2luZWVyLAo+Pj4+Cj4+Pj4gd2UgaGF2ZSBtYWRlIGEgZ3JlYXQgZWZmb3J0IHRvIG1ha2UgZXZl
cnl0aGluZyB3b3JrIHdoaWNoIGJsb2NrIHVzIHRvCj4+Pj4gdXBzdHJlYW0gdGhpcyBkcml2ZXIg
Zm9yIG5vdy4KPj4+IEkgZG9uJ3QgZnVsbHkgdW5kZXJzdGFuZCB3aGF0IHlvdSBtZWFuIGhlcmUg
KGxhbmd1YWdlIGJhcnJpZXIgcHJvYmFibHkpLAo+Pj4gYnV0IGRyb3BwaW5nIG5vbi1lc3NlbnRp
YWwgZnVuY3Rpb25hbGl0eSBpbiBhIGZpcnN0IHJvdW5kIGlzIHByZXR0eSAKPj4+IGNvbW1vbgo+
Pj4gdG8gYXQgbGVhc3QgZ2V0IGJhc2ljIGZ1bmN0aW9uYWxpdHkgd29ya2luZyBmb3IgZXZlcnlv
bmUuIFdpdGggdGhlIAo+Pj4gc3BlY2lhbAo+Pj4gZmVhdHVyZXMgZ2V0dGluZyBhZGRlZCBhZ2Fp
biBpbiBsYXRlciBwYXRjaGVzIG92ZXIgdGltZS4gVGhpcyBoYXBwZW5lbmVkCj4+PiBvbiB0aGUg
b2xkIHZvcCBhcyB3ZWxsLgo+Pj4KPj4+IEFuZCBvZiBjb3Vyc2UsIGhhdmluZyBhIGtlcm5lbCB0
aGF0IGNhbiAianVzdCIgZG8gbm9ybWFsIGdyYXBoaWNzIAo+Pj4gd2l0aG91dAo+Pj4gdGhlIGFk
ZGl0aW9uYWwgZmVhdHVyZXMgaXMgc3RpbGwgcHJlZmVyYWJsZSBvdmVyIGhhdmluZyBfTk9fIGdy
YXBoaWNzIAo+Pj4gc3VwcG9ydAo+Pj4gYXQgYWxsIDstKQo+Pj4KPj4+PiBOQUsgZm9yIHRoaXMg
c2VyaWVzLgo+Pj4gQXMgeW91IG1pZ2h0J3ZlIHNlZW4gZnJvbSBwcmV2aW91cyBncmFwaGljcyBy
ZWxhdGVkIHBhdGNoZXMsIHRoZXJlCj4+PiBpcyBhIGJpZyBudW1iZXIgb2YgcGVvcGxlIF9hbmQg
Y29tcGFuaWVzXyB0aGF0IHNlZW1zIHRvIHdhbnQvbmVlZAo+Pj4gdG8gd29yayB3aXRoIHRoZSBy
azM1NjYvcmszNTY4IHdpdGggYSBrZXJuZWwgYmFzZWQgb24gbWFpbmxpbmUuCj4+Pgo+Pj4gLS0+
IE1vc3QgbGlrZWx5IGV2ZW4gaW4gcmVhbCBwcm9kdWN0cyEKPj4gWWVzLCB3ZSd2ZSBiZWVuIHRy
eWluZyB0byBzaGlwIGEgcmVhbCBwcm9kdWN0IGJhc2VkIG9uIFJLMzU2eC4gV2UKPj4gc3RhcnRl
ZCBieSB1c2luZyB0aGUgdmVuZG9yIFZPUDIgZHJpdmVyLCBidXQgaXQgaXMgYnJva2VuIGJleW9u
ZAo+PiBiZWxpZWYuIFRoZSBkcml2ZXIgbmVlZHMgYSBmdW5kYW1lbnRhbCBncm91bmQtdXAgcmV3
b3JrLCBhbmQgYWxsIHRoZQo+PiBhZGRpdGlvbmFsIGZlYXR1cmVzIGdldCBpbiB0aGUgd2F5IG9m
IGRvaW5nIHRoaXMgY29yZSByZXdvcmsgdG8gbWFrZQo+PiBpdCBhY3R1YWxseSBmdW5jdGlvbiBj
b3JyZWN0bHkuCj4+Cj4+IFNvLCBOQUsgdG8gdGhlIE5BSy4gSSB3b3VsZCBsaWtlIHRvIHNlZSB0
aGUgVk9QMiBzdXBwb3J0IHN0YXJ0IHNpbXBsZSwKPj4gd2l0aCBtb3JlIGZlYXR1cmVzIGJlaW5n
IGFkZGVkIG9uZSBieSBvbmUuCj4+Cj4+PiBXaGlsZSBSb2NrY2hpcCBkaWQgc2F5IHRoYXQgdGhl
eSB3YW50IHRvIHVwc3RyZWFtIFZPUDIgc3VwcG9ydCwgdGhlcmUKPj4+IGhhcyBiZWVuIF9OT18g
bW92ZW1lbnQgb3IgZXZlbiBpbmZvcm1hdGlvbiBhdCBhbGwgb24gdGhpcyBvdmVyIGF0IGxlYXN0
Cj4+PiB0aGUgbGFzdCB5ZWFyKCEpLCBzbyBpdCdzIHByZXR0eSB1bmRlcnN0YW5kYWJsZSB0aGF0
IGRldmVsb3BlcnMgd2lsbCAKPj4+IGRvIHRoaXMKPj4+IHRoZW1zZWxmIGF0IHNvbWUgcG9pbnQs
IGJlY2F1c2UgdGhleSBkb24ndCB3YW50IHRvIHdhaXQgYW55bW9yZSBmb3IKPj4+IHNvbWV0aGlu
ZyB0aGF0IG1pZ2h0IG5ldmVyIGhhcHBlbi4KPj4+Cj4+PiBTbyBhIHNpbXBsZSAiTkFLIiB3aXRo
b3V0IGFkZGl0aW9uYWwgaW5mb3JtYXRpb24gaXMgbm90IHJlYWxseSAKPj4+IGhlbHBmdWwgaGVy
ZS4KPj4+Cj4+PiBJZiB5b3UgZG9uJ3QgbGlrZSBTYXNjaGEncyBzZXJpZXMsIEkgcmVhbGx5IHdh
bnQgdG8ga25vdyBfV0hFTl8gUm9ja2NoaXAKPj4+IHBsYW5zIG9uIHVwc3RyZWFtaW5nIGF0IGxl
YXN0IGJhc2ljIGdyYXBoaXMgc3VwcG9ydCB0aGVtc2VsZi4KPj4+Cj4+PiBUaGUga2VybmVsIGlz
IG9mdGVuIGNhbGxlZCBhIGRvLW9jcmFjeSAtIHRoZSBvbmUgd2hvIGRvZXMgdGhlIHdvcmssIGdl
dHMKPj4+IHRvIGRlY2lkZS4gU28gaWYgeW91IHJlYWxseSBkb24ndCBsaWtlIFNhc2NoYSdzIHNl
cmllcyBhdCBhbGwsIEkgZG8gCj4+PiBleHBlY3QKPj4+IFJvY2tjaGlwIHRvIHN0ZXAgdXAgYW5k
IHByb3ZpZGUgYSBzb2x1dGlvbiB0aGVtc2VsZiAtIGFuZCBpbiBhIHVzYWJsZQo+Pj4gdGltZWZy
YW1lLgo+PiBFeGFjdGx5IHdoYXQgSGVpa28gc2FpZC4gSWYgeW91IHdvdWxkIGxpa2UgdG8gdXBz
dHJlYW0gdGhlIGRyaXZlciB0aGVuCj4+IHRoYXQgd291bGQgYmUgZmFudGFzdGljIHRvIHNlZSwg
YnV0IEknbSBhZnJhaWQgeW91IGRvIG5vdCBnZXQgdG8KPj4gcHJldmVudCBzb21lb25lIGVsc2Ug
ZnJvbSBkb2luZyB0aGUgd29yayB0aGVtc2VsdmVzLgo+IAo+IEZpcnN0IG9mIGFsbCwgd2UgbmV2
ZXIgc3RvcCBhbnkgb25lIHRvIGRvaW5nIHRoZXJlIHdvcmsgb24gdXBzdHJlYW0gaWYgCj4gdGhl
IHNvdXJjZSBjb2RlIGlzIHdyaXRlIHRvdGFsbHkgYnkgdGhlbXNlbHZlcy4KPiAKPiBTZWNvbmQs
IHRoZXJlIGFyZSBhbHNvIG1hbnkgbW9kdWxlcyBhcmUgdXBzdHJlYW0gYnkgZGV2ZWxvcGVycyBi
YXNlZCBvbiAKPiBSb2NrY2hpcCBzb3VyY2UgY29kZSwgcGxlYXNlIG5vdGUgdGhhdAo+IGFsbCBv
ZiB0aGVtIGhhdmUgYmFzaWMgcmVzcGVjdCB0byBvdXIgd29yaywgdGhleSBkbyBjb21tdW5pY2F0
ZSB3aXRoIHVzIAo+IGZpcnN0Lgo+IAo+IAo+IEJ1dCB0aGlzIGNvbW1pdHRlciBkbyBub3QgdGFr
ZSBhbnkgcmVzcGVjdCB0byBvdXIgZW5naW5lZXJzIGFuZCB0aGVpciAKPiBoYXJkIHdvcmtpbmc6
Cj4gLSBIZSBkaWRuJ3QgY29udGFjdCB3aXRoIHVzOwoKSSBhcHByb2FjaGVkIEFuZHkgWWFuIGFu
ZCB5b3Ugb2ZmLWxpc3Qgb24gT2N0b2JlciAyMCwgMjAyMSBpbiB0aGlzIApyZWdhcmQsIGFzIEFu
ZHkgbWVudGlvbmVkIG9uIGxpbnV4LXJvY2tjaGlwIGluIEp1bHkgMjAyMSBzb21lIHBsYW5zIHRv
IApicmluZyB0aGUgZHJpdmVyIG1haW5saW5lLiBTaW5jZSB0aGVyZSB3YXMgbm8gcmVzcG9uc2Us
IHdlIGFza2VkIFNhc2NoYSAKdG8gbWFrZSB0aGlzIGhhcHBlbi4KCj4gLSBUaGVyZSBpc24ndMKg
IGFueSBpbmZvcm1hdGlvbiBhYm91dCBvcmlnaW5hbCBhdXRob3IgaW4gdGhlIGNvbW1pdCBtZXNz
YWdlOwo+ICDCoMKgwqAgQXMgSSBoYXZlIGtub3duLCBpZiBJIHVzZSBzb3VyY2UgY29kZSBmcm9t
IGFub3RoZXIgZGV2ZWxvcGVyLCBJIAo+IG5lZWQgdG8gYXQgbGVhc3QgYWRkIGEgIlNpZ25lZC1v
ZmYtYnkiIHdpdGggb3JpZ2luYWwgYXV0aG9yOwoKQXMgaGFzIGJlZW4gZGlzY3Vzc2VkIGJlZm9y
ZSwgdGhpcyB3aWxsIGJlIGZpeGVkIGluIHYyLiBTaW1wbGUgbWlzdGFrZSwgCm5vIGhhcm0gaW50
ZW5kZWQuCgo+IC0gVGhpcyBjb21taXQgYW5kIG1haWwgZG9lcyBub3QgZXZlbiBoYXZlIGEgJ0ND
JyB0byBvcmlnaW5hbCBhdXRob3IuCj4gCj4gSSBOQUsgYmVjYXVzZSBJwqAgdGhpbmsgdGhpcyBp
cyBub3QgcGFydCBvZiB0aGXCoCBvcGVuIHNvdXJjZSBzcGlyaXQsIGFuZCAKPiB0aGlzIGtpbmQg
b2bCoCBiZWhhdmlvciBzaG91bGQgbm90IGJlIGVuY291cmFnZWQuCgpJdCBpcyBncmVhdCB0byBo
ZWFyIHRoYXQgeW91IGNhcmUgYWJvdXQgdGhlIG9wZW4gc291cmNlIHNwaXJpdC4gSU1ITyAKY29t
bXVuaWNhdGlvbiBpcyBhIGJpZyBwYXJ0IHRoZXJlb2YuIElmIFJvY2tjaGlwIHdvdWxkIGNvbW11
bmljYXRlIApiZXR0ZXIgdGhlaXIgcGxhbnMgdG8gYnJpbmcgdGhpbmdzIG1haW5saW5lIGluY2x1
ZGluZyBhIHRpbWUgc2NoZWR1bGUsIAppdCB3b3VsZCBiZSBhIGxvdCBlYXNpZXIgZm9yIGFsbCBv
ZiB1cy4KCkJlc3QgcmVnYXJkcywKTWljaGFlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
